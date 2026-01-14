Class {
	#name : 'OtCMakeScript',
	#superclass : 'OtCSerializationStep',
	#instVars : [
		'rootReference',
		'references',
		'nameReferenceDictionary',
		'serializedString'
	],
	#category : 'ObjectsToCode-Serialization',
	#package : 'ObjectsToCode',
	#tag : 'Serialization'
}

{ #category : 'building' }
OtCMakeScript >> build [

	| variablesString variableConstructors rootString globalString |
	variablesString := self buildVariablesString.
	variableConstructors := self buildVariableConstructorsString.
	rootString := self buildRootString.
	globalString := '<1s><r><2s><r><3s><r>'
		                expandMacrosWith: variablesString
		                with: variableConstructors
		                with: rootString.

	self serializedString:
		(RBSimpleFormatter format: (RBParser parseExpression: globalString))
]

{ #category : 'building' }
OtCMakeScript >> buildRootString [

	| visitor |
	visitor := self makeNewVisitor.
	self rootReference otcVisit: visitor.
	^ visitor scriptStream contents
]

{ #category : 'building' }
OtCMakeScript >> buildScriptStrings [

	| variablesString variableConstructors rootString globalString |
	variablesString := self buildVariablesString.
	variableConstructors := self buildVariableConstructorsString.
	rootString := self buildRootString.

	globalString := '<1s><r><2s><r><3s><r>'
		expandMacrosWith: variablesString
		with: variableConstructors
		with: rootString.

	self serializedString: (RBSimpleFormatter format: (RBParser parseExpression: globalString)).
	
]

{ #category : 'building' }
OtCMakeScript >> buildVariableConstructorsString [

	| variableConstructors |
	variableConstructors := ''.
	self referencesAndNamesDictionary keysAndValuesDo: [ :ref :name |
			| visitor |
			visitor := self makeNewVisitor.
			ref constructor otcVisit: visitor.
			variableConstructors := variableConstructors , ('<1s> := (<2s>).'
				                         expandMacrosWith: name
				                         with: visitor scriptStream contents) ].

	^ variableConstructors
]

{ #category : 'building' }
OtCMakeScript >> buildVariablesString [

	| variablesString |
	self referencesAndNamesDictionary ifEmpty: [ ^ '' ].
	self referencesAndNamesDictionary size = 1 ifTrue: [
			^ '| <1s> |' expandMacrosWith:
				  self referencesAndNamesDictionary values first ].
	variablesString := '| <1s> |' expandMacrosWith:
		                   (self referencesAndNamesDictionary values reduce: [
			                    :a
			                    :b | '<1s> <2s>' expandMacrosWith: a with: b ]).

	^ variablesString
]

{ #category : 'building' }
OtCMakeScript >> makeNewVisitor [

	^ OtCSerializationReferenceVisitor new
				           nameReferenceDictionary: self referencesAndNamesDictionary;
				           yourself.
]

{ #category : 'accessing' }
OtCMakeScript >> nameReferenceDictionary: anObject [

	nameReferenceDictionary := anObject
]

{ #category : 'accessing' }
OtCMakeScript >> references [

	^ references
]

{ #category : 'accessing' }
OtCMakeScript >> references: anObject [

	references := anObject
]

{ #category : 'accessing' }
OtCMakeScript >> referencesAndNamesDictionary [

	^ nameReferenceDictionary
]

{ #category : 'accessing' }
OtCMakeScript >> rootReference [

	^ rootReference
]

{ #category : 'accessing' }
OtCMakeScript >> rootReference: anObject [

	rootReference := anObject
]

{ #category : 'accessing' }
OtCMakeScript >> serializedString [

	^ serializedString
]

{ #category : 'accessing' }
OtCMakeScript >> serializedString: anObject [

	serializedString := anObject
]

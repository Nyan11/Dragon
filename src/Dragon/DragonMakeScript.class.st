Class {
	#name : 'DragonMakeScript',
	#superclass : 'DragonSerializationStep',
	#instVars : [
		'rootReference',
		'references',
		'nameReferenceDictionary',
		'serializedString'
	],
	#category : 'Dragon-Serialization',
	#package : 'Dragon',
	#tag : 'Serialization'
}

{ #category : 'building' }
DragonMakeScript >> build [

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
DragonMakeScript >> buildRootString [

	| visitor |
	visitor := self makeNewVisitor.
	self rootReference dragonVisit: visitor.
	^ visitor scriptStream contents
]

{ #category : 'building' }
DragonMakeScript >> buildScriptStrings [

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
DragonMakeScript >> buildVariableConstructorsString [

	| variableConstructors |
	variableConstructors := ''.
	self referencesAndNamesDictionary keysAndValuesDo: [ :ref :name |
			| visitor |
			visitor := self makeNewVisitor.
			ref constructor dragonVisit: visitor.
			variableConstructors := variableConstructors , ('<1s> := (<2s>).'
				                         expandMacrosWith: name
				                         with: visitor scriptStream contents) ].

	^ variableConstructors
]

{ #category : 'building' }
DragonMakeScript >> buildVariablesString [

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
DragonMakeScript >> makeNewVisitor [

	^ DragonSerializationReferenceVisitor new
				           nameReferenceDictionary: self referencesAndNamesDictionary;
				           yourself.
]

{ #category : 'accessing' }
DragonMakeScript >> nameReferenceDictionary: anObject [

	nameReferenceDictionary := anObject
]

{ #category : 'accessing' }
DragonMakeScript >> references [

	^ references
]

{ #category : 'accessing' }
DragonMakeScript >> references: anObject [

	references := anObject
]

{ #category : 'accessing' }
DragonMakeScript >> referencesAndNamesDictionary [

	^ nameReferenceDictionary
]

{ #category : 'accessing' }
DragonMakeScript >> rootReference [

	^ rootReference
]

{ #category : 'accessing' }
DragonMakeScript >> rootReference: anObject [

	rootReference := anObject
]

{ #category : 'accessing' }
DragonMakeScript >> serializedString [

	^ serializedString
]

{ #category : 'accessing' }
DragonMakeScript >> serializedString: anObject [

	serializedString := anObject
]

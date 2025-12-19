Class {
	#name : 'DragonMakeScript',
	#superclass : 'DragonSerializationStep',
	#instVars : [
		'rootReference',
		'multiReferences',
		'nameReferenceDictionary',
		'serializedString'
	],
	#category : 'Dragon',
	#package : 'Dragon'
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
	visitor := DragonSerializationReferenceVisitor new
		           nameReferenceDictionary: self nameReferenceDictionary;
		           yourself.
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
	self nameReferenceDictionary keysAndValuesDo: [ :ref :name |
			variableConstructors := variableConstructors
			                        ,
			                        ('<1s> := (<2s>).'
				                         expandMacrosWith: name
				                         with: (ref constructor dragonVisit: self)) ].

	^ variableConstructors
]

{ #category : 'building' }
DragonMakeScript >> buildVariablesString [

	| variablesString |
	self nameReferenceDictionary ifEmpty: [ ^ '' ].
	self nameReferenceDictionary size = 1 ifTrue: [
			^ '| <1s> |' expandMacrosWith:
				  self nameReferenceDictionary values first ].
	variablesString := '| <1s> |' expandMacrosWith:
		                   (self nameReferenceDictionary values reduce: [
			                    :a
			                    :b | '<1s> <2s>' expandMacrosWith: a with: b ]).

	^ variablesString
]

{ #category : 'accessing' }
DragonMakeScript >> multiReferences [

	^ multiReferences
]

{ #category : 'accessing' }
DragonMakeScript >> multiReferences: anObject [

	multiReferences := anObject
]

{ #category : 'accessing' }
DragonMakeScript >> nameReferenceDictionary [

	^ nameReferenceDictionary
]

{ #category : 'accessing' }
DragonMakeScript >> nameReferenceDictionary: anObject [

	nameReferenceDictionary := anObject
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

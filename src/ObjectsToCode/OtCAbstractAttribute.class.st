Class {
	#name : 'OtCAbstractAttribute',
	#superclass : 'OtCAbstractObject',
	#instVars : [
		'name',
		'isForConstructor'
	],
	#category : 'ObjectsToCode-Description',
	#package : 'ObjectsToCode',
	#tag : 'Description'
}

{ #category : 'testing' }
OtCAbstractAttribute class >> isAbstract [

	^ self == OtCAbstractAttribute
]

{ #category : 'as yet unclassified' }
OtCAbstractAttribute >> beForConstructor [

	isForConstructor := true
]

{ #category : 'as yet unclassified' }
OtCAbstractAttribute >> initialize [

	super initialize.
	isForConstructor := false
]

{ #category : 'as yet unclassified' }
OtCAbstractAttribute >> internalStatesFor: anObject [

	^ self explicitRequirement
]

{ #category : 'testing' }
OtCAbstractAttribute >> isComplexSetter [

	self setter ifNil: [ ^ false ].
	^ (self setter occurrencesOf: $:) > 1
]

{ #category : 'accessing' }
OtCAbstractAttribute >> isForConstructor [

	 ^ isForConstructor
]

{ #category : 'testing' }
OtCAbstractAttribute >> isMultiple [

	^ false
]

{ #category : 'testing' }
OtCAbstractAttribute >> isState [

	^ false
]

{ #category : 'accessing' }
OtCAbstractAttribute >> name [

	^ name
]

{ #category : 'accessing' }
OtCAbstractAttribute >> name: anObject [

	name := anObject
]

{ #category : 'as yet unclassified' }
OtCAbstractAttribute >> otcVisit: anOtCVisitor [

	anOtCVisitor visitAttribute: self
]

{ #category : 'as yet unclassified' }
OtCAbstractAttribute >> relationsFor: anObject [

	^ self explicitRequirement
]

{ #category : 'as yet unclassified' }
OtCAbstractAttribute >> verifyObjectIsDefault: anObject [

	self flag: 'I am not sure of this'.
	^ false
]

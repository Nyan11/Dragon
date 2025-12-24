Class {
	#name : 'DragonAbstractAttribute',
	#superclass : 'DragonObject',
	#instVars : [
		'name',
		'isForConstructor'
	],
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'testing' }
DragonAbstractAttribute class >> isAbstract [

	^ self == DragonAbstractAttribute
]

{ #category : 'as yet unclassified' }
DragonAbstractAttribute >> beForConstructor [

	isForConstructor := true
]

{ #category : 'as yet unclassified' }
DragonAbstractAttribute >> dragonVisit: aDragonVisitor [

	aDragonVisitor visitAttribute: self 
]

{ #category : 'as yet unclassified' }
DragonAbstractAttribute >> initialize [

	super initialize.
	isForConstructor := false
]

{ #category : 'as yet unclassified' }
DragonAbstractAttribute >> internalStatesFor: anObject [

	^ self explicitRequirement
]

{ #category : 'testing' }
DragonAbstractAttribute >> isComplexSetter [

	self setter ifNil: [ ^ false ].
	^ (self setter occurrencesOf: $:) > 1
]

{ #category : 'accessing' }
DragonAbstractAttribute >> isForConstructor [

	 ^ isForConstructor
]

{ #category : 'testing' }
DragonAbstractAttribute >> isMultiple [

	^ false
]

{ #category : 'testing' }
DragonAbstractAttribute >> isState [

	^ false
]

{ #category : 'accessing' }
DragonAbstractAttribute >> name [

	^ name
]

{ #category : 'accessing' }
DragonAbstractAttribute >> name: anObject [

	name := anObject
]

{ #category : 'as yet unclassified' }
DragonAbstractAttribute >> relationsFor: anObject [

	^ self explicitRequirement
]

{ #category : 'as yet unclassified' }
DragonAbstractAttribute >> verifyObjectIsDefault: anObject [

	self flag: 'I am not sure of this'.
	^ false
]

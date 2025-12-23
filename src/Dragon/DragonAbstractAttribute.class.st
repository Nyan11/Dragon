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
DragonAbstractAttribute >> dragonEquals: arg1 [

	self class = arg1 class ifFalse: [ ^ false ].
	^ self name = arg1 name
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

{ #category : 'testing' }
DragonAbstractAttribute >> isComplexSetter [

	^ (self setter occurrencesOf: $:) > 1
]

{ #category : 'accessing' }
DragonAbstractAttribute >> isForConstructor [

	 ^ isForConstructor
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

{ #category : 'testing' }
DragonAbstractAttribute >> setter [

	^ self explicitRequirement
]

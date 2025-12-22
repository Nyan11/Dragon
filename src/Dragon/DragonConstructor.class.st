Class {
	#name : 'DragonConstructor',
	#superclass : 'DragonObject',
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'converting' }
DragonConstructor >> constructorString [

	^ self explicitRequirement
]

{ #category : 'as yet unclassified' }
DragonConstructor >> dragonVisit: aDragonVisitor [

	aDragonVisitor visitConstructor: self
]

{ #category : 'testing' }
DragonConstructor >> hasReferences [

	^ false
]

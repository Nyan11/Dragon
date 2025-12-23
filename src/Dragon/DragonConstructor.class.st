Class {
	#name : 'DragonConstructor',
	#superclass : 'DragonObject',
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'testing' }
DragonConstructor class >> isAbstract [

	^ self class == DragonConstructor
]

{ #category : 'as yet unclassified' }
DragonConstructor >> dragonVisit: aDragonVisitor [

	aDragonVisitor visitConstructor: self
]

{ #category : 'testing' }
DragonConstructor >> hasReferences [

	^ false
]

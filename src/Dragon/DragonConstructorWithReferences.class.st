Class {
	#name : 'DragonConstructorWithReferences',
	#superclass : 'DragonConstructor',
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'adding' }
DragonConstructorWithReferences >> addNextReference: aDragonReference withAttribute: aDragonAttribute [

	self explicitRequirement
]

{ #category : 'accessing' }
DragonConstructorWithReferences >> beginConstructorString [

	^ self explicitRequirement
]

{ #category : 'accessing' }
DragonConstructorWithReferences >> endConstructorString [

	^ self explicitRequirement
]

{ #category : 'testing' }
DragonConstructorWithReferences >> hasReferences [

	^ true
]

{ #category : 'accessing' }
DragonConstructorWithReferences >> references [

	^ self explicitRequirement
]

{ #category : 'accessing' }
DragonConstructorWithReferences >> separatorConstructorString [

	^ self explicitRequirement
]

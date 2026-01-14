Class {
	#name : 'OtCConstructorWithReferences',
	#superclass : 'OtCConstructor',
	#category : 'ObjectsToCode-Description',
	#package : 'ObjectsToCode',
	#tag : 'Description'
}

{ #category : 'adding' }
OtCConstructorWithReferences >> addNextReference: aDragonReference withAttribute: aDragonAttribute [

	self explicitRequirement
]

{ #category : 'accessing' }
OtCConstructorWithReferences >> beginConstructorString [

	^ self explicitRequirement
]

{ #category : 'accessing' }
OtCConstructorWithReferences >> endConstructorString [

	^ self explicitRequirement
]

{ #category : 'testing' }
OtCConstructorWithReferences >> hasReferences [

	^ true
]

{ #category : 'accessing' }
OtCConstructorWithReferences >> references [

	^ self explicitRequirement
]

{ #category : 'accessing' }
OtCConstructorWithReferences >> separatorConstructorString [

	^ self explicitRequirement
]

Class {
	#name : 'DragonArrayConstructor',
	#superclass : 'DragonConstructorWithReferences',
	#instVars : [
		'objectsOfArray'
	],
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'adding' }
DragonArrayConstructor >> addNextReference: aDragonReference withAttribute: aDragonAttribute [

	self objectsOfArray add: aDragonReference

]

{ #category : 'as yet unclassified' }
DragonArrayConstructor >> beginConstructorString [
	^ '{'
]

{ #category : 'as yet unclassified' }
DragonArrayConstructor >> endConstructorString [
	^ '}'
]

{ #category : 'testing' }
DragonArrayConstructor >> hasReferences [

	^ true
]

{ #category : 'initialization' }
DragonArrayConstructor >> initialize [

	super initialize.
	objectsOfArray := OrderedCollection new
]

{ #category : 'testing' }
DragonArrayConstructor >> objectsOfArray [

	^ objectsOfArray
]

{ #category : 'testing' }
DragonArrayConstructor >> references [

	^ self objectsOfArray
]

{ #category : 'as yet unclassified' }
DragonArrayConstructor >> separatorConstructorString [
	^ '.'
]

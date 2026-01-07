Class {
	#name : 'DragonArrayConstructor',
	#superclass : 'DragonConstructorWithReferences',
	#instVars : [
		'references'
	],
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'adding' }
DragonArrayConstructor >> addNextReference: aDragonReference withAttribute: aDragonAttribute [

	self references add: aDragonReference
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
	references := OrderedCollection new
]

{ #category : 'testing' }
DragonArrayConstructor >> references [

	^ references
]

{ #category : 'as yet unclassified' }
DragonArrayConstructor >> separatorConstructorString [
	^ '.'
]

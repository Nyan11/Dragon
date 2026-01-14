Class {
	#name : 'OtCArrayConstructor',
	#superclass : 'OtCConstructorWithReferences',
	#instVars : [
		'references'
	],
	#category : 'ObjectsToCode-Description',
	#package : 'ObjectsToCode',
	#tag : 'Description'
}

{ #category : 'adding' }
OtCArrayConstructor >> addNextReference: aDragonReference withAttribute: aDragonAttribute [

	self references add: aDragonReference
]

{ #category : 'as yet unclassified' }
OtCArrayConstructor >> beginConstructorString [
	^ '{'
]

{ #category : 'as yet unclassified' }
OtCArrayConstructor >> endConstructorString [
	^ '}'
]

{ #category : 'testing' }
OtCArrayConstructor >> hasReferences [

	^ true
]

{ #category : 'initialization' }
OtCArrayConstructor >> initialize [

	super initialize.
	references := OrderedCollection new
]

{ #category : 'testing' }
OtCArrayConstructor >> references [

	^ references
]

{ #category : 'as yet unclassified' }
OtCArrayConstructor >> separatorConstructorString [
	^ '.'
]

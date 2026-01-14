Class {
	#name : 'OtCBlockClosureConstructor',
	#superclass : 'OtCConstructorWithReferences',
	#instVars : [
		'arguments',
		'references'
	],
	#category : 'ObjectsToCode-Description',
	#package : 'ObjectsToCode',
	#tag : 'Description'
}

{ #category : 'adding' }
OtCBlockClosureConstructor >> addNextReference: aDragonReference withAttribute: aDragonAttribute [

	self references add: aDragonReference.
	self halt.
]

{ #category : 'accessing' }
OtCBlockClosureConstructor >> arguments [

	^ arguments
]

{ #category : 'accessing' }
OtCBlockClosureConstructor >> arguments: anObject [

	arguments := anObject
]

{ #category : 'accessing' }
OtCBlockClosureConstructor >> beginConstructorString [

	^ String streamContents: [ :stream |
			  stream << '['.
			  self arguments do: [ :arg |
					  stream << ':'.
					  stream << arg.
					  stream << ' ' ].
			  stream << '|' ]
]

{ #category : 'accessing' }
OtCBlockClosureConstructor >> endConstructorString [

	^ ']'
]

{ #category : 'initialization' }
OtCBlockClosureConstructor >> initialize [

	super initialize.
	references := OrderedCollection new
]

{ #category : 'accessing' }
OtCBlockClosureConstructor >> references [

	^ references
]

{ #category : 'accessing' }
OtCBlockClosureConstructor >> separatorConstructorString [

	^ '.'
]

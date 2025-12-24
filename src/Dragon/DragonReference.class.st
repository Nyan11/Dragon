Class {
	#name : 'DragonReference',
	#superclass : 'DragonObject',
	#instVars : [
		'object',
		'relations',
		'nextReferencesWithAttribute',
		'constructor',
		'nextReferenceArguments',
		'internalStates'
	],
	#category : 'Dragon-Serialization',
	#package : 'Dragon',
	#tag : 'Serialization'
}

{ #category : 'adding' }
DragonReference >> addNextReference: aDragonReference withAttribute: aDragonAttribute [

	aDragonAttribute isForConstructor ifTrue: [
			^ self constructor
				  addNextReference: aDragonReference
				  withAttribute: aDragonAttribute ].
	
	self nextReferencesWithAttribute
		at: aDragonReference
		put: aDragonAttribute
]

{ #category : 'accessing' }
DragonReference >> constructor [

	^ constructor
]

{ #category : 'accessing' }
DragonReference >> constructor: anObject [

	constructor := anObject
]

{ #category : 'as yet unclassified' }
DragonReference >> dragonVisit: aDragonVisitor [

	aDragonVisitor visitReference: self
]

{ #category : 'accessing' }
DragonReference >> initialize [

	super initialize.
	nextReferencesWithAttribute := OrderedDictionary new.
	internalStates := OrderedCollection new
]

{ #category : 'accessing' }
DragonReference >> internalStates [

	^ internalStates
]

{ #category : 'accessing' }
DragonReference >> internalStates: anObject [

	internalStates := anObject
]

{ #category : 'accessing' }
DragonReference >> nextReferenceArguments [
	^ self constructor references
]

{ #category : 'accessing' }
DragonReference >> nextReferencesWithAttribute [

	^ nextReferencesWithAttribute
]

{ #category : 'accessing' }
DragonReference >> object [

	^ object
]

{ #category : 'accessing' }
DragonReference >> object: anObject [

	object := anObject.
	self constructor: anObject dragonConstructor
]

{ #category : 'accessing' }
DragonReference >> relations [

	^ relations
]

{ #category : 'accessing' }
DragonReference >> relations: anObject [

	relations := anObject
]

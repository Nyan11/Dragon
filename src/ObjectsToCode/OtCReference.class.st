Class {
	#name : 'OtCReference',
	#superclass : 'OtCAbstractObject',
	#instVars : [
		'object',
		'relations',
		'nextReferencesWithAttribute',
		'constructor',
		'nextReferenceArguments',
		'internalStates'
	],
	#category : 'ObjectsToCode-Serialization',
	#package : 'ObjectsToCode',
	#tag : 'Serialization'
}

{ #category : 'adding' }
OtCReference >> addNextReference: aDragonReference withAttribute: aDragonAttribute [

	aDragonAttribute isForConstructor ifTrue: [
			^ self constructor
				  addNextReference: aDragonReference
				  withAttribute: aDragonAttribute ].
	
	self nextReferencesWithAttribute
		at: aDragonReference
		put: aDragonAttribute
]

{ #category : 'accessing' }
OtCReference >> constructor [

	^ constructor
]

{ #category : 'accessing' }
OtCReference >> constructor: anObject [

	constructor := anObject
]

{ #category : 'accessing' }
OtCReference >> initialize [

	super initialize.
	nextReferencesWithAttribute := OrderedDictionary new.
	internalStates := OrderedCollection new
]

{ #category : 'accessing' }
OtCReference >> internalStates [

	^ internalStates
]

{ #category : 'accessing' }
OtCReference >> internalStates: anObject [

	internalStates := anObject
]

{ #category : 'accessing' }
OtCReference >> nextReferenceArguments [
	^ self constructor references
]

{ #category : 'accessing' }
OtCReference >> nextReferencesWithAttribute [

	^ nextReferencesWithAttribute
]

{ #category : 'accessing' }
OtCReference >> object [

	^ object
]

{ #category : 'accessing' }
OtCReference >> object: anObject [

	object := anObject.
	self constructor: anObject otcConstructor
]

{ #category : 'as yet unclassified' }
OtCReference >> otcVisit: anOtCVisitor [

	anOtCVisitor visitReference: self
]

{ #category : 'accessing' }
OtCReference >> relations [

	^ relations
]

{ #category : 'accessing' }
OtCReference >> relations: anObject [

	relations := anObject
]

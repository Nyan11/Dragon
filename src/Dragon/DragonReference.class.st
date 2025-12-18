Class {
	#name : 'DragonReference',
	#superclass : 'Object',
	#instVars : [
		'object',
		'relations',
		'nextReferencesWithAttribute'
	],
	#category : 'Dragon',
	#package : 'Dragon'
}

{ #category : 'adding' }
DragonReference >> addNextReference: aDragonReference withAttribute: aDragonSingleAttribute [

	self nextReferencesWithAttribute at: aDragonReference put: aDragonSingleAttribute.
]

{ #category : 'accessing' }
DragonReference >> initialize [ 

	super initialize.
	nextReferencesWithAttribute := Dictionary new
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

	object := anObject
]

{ #category : 'accessing' }
DragonReference >> relations [

	^ relations
]

{ #category : 'accessing' }
DragonReference >> relations: anObject [

	relations := anObject
]

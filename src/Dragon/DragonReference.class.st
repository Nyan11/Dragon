Class {
	#name : 'DragonReference',
	#superclass : 'DragonObject',
	#instVars : [
		'object',
		'relations',
		'nextReferencesWithAttribute',
		'constructor'
	],
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'adding' }
DragonReference >> addNextReference: aDragonReference withAttribute: aDragonAttribute [

	aDragonAttribute isForConstructor
		ifTrue: [
				self constructor
					addNextReference: aDragonReference
					withAttribute: aDragonAttribute ]
		ifFalse: [
				self nextReferencesWithAttribute
					at: aDragonReference
					put: aDragonAttribute ]
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
	nextReferencesWithAttribute := Dictionary new.
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

Class {
	#name : 'DragonMakeAllReferences',
	#superclass : 'DragonSerializationStep',
	#instVars : [
		'sourcesDictionary',
		'targetsDictionary',
		'rootObject',
		'rootReference',
		'singleReferences',
		'multiReferences',
		'referenceDictionary'
	],
	#category : 'Dragon-Serialization',
	#package : 'Dragon',
	#tag : 'Serialization'
}

{ #category : 'building' }
DragonMakeAllReferences >> addMultiReference: anObject [

	| reference |
	reference := self newReferenceFor: anObject.
	self multiReferences add: reference.
	^ reference
]

{ #category : 'building' }
DragonMakeAllReferences >> addSingleReference: anObject [

	| reference |
	reference := self newReferenceFor: anObject.
	self singleReferences add: reference.
	^ reference
]

{ #category : 'building' }
DragonMakeAllReferences >> build [

	self buildReferences.
	self buildReferenceGraph.
]

{ #category : 'building' }
DragonMakeAllReferences >> buildReferenceGraph [

	self referenceDictionary keysAndValuesDo: [ :object :reference |
			reference relations do: [ :relation |
					reference
						addNextReference: (self referenceDictionary at: relation target)
						withAttribute: relation dragonAttribute ] ]
]

{ #category : 'building' }
DragonMakeAllReferences >> buildReferences [

	| isRootMulti |
	isRootMulti := false.
	self targetsDictionary keysAndValuesDo: [ :object :relation |
			object = self rootObject
				ifTrue: [
						self rootReference: (self addMultiReference: object).
						isRootMulti := true ]
				ifFalse: [
						relation size > 1
							ifTrue: [ self addMultiReference: object ]
							ifFalse: [ self addSingleReference: object ] ] ].
	isRootMulti ifTrue: [ ^ self ].
	self rootReference: (self addSingleReference: self rootObject)
]

{ #category : 'initialization' }
DragonMakeAllReferences >> initialize [

	super initialize.
	singleReferences := OrderedCollection new.
	multiReferences := OrderedCollection new.
	referenceDictionary := OrderedDictionary new
]

{ #category : 'accessing' }
DragonMakeAllReferences >> multiReferences [

	^ multiReferences
]

{ #category : 'building' }
DragonMakeAllReferences >> newReferenceFor: anObject [

	| reference |
	reference := DragonReference new
		             object: anObject;
		             relations:
			             (self sourcesDictionary
				              at: anObject
				              ifAbsent: [ {  } ]).
	self referenceDictionary at: anObject put: reference.
	^ reference
]

{ #category : 'accessing' }
DragonMakeAllReferences >> referenceDictionary [

	^ referenceDictionary
]

{ #category : 'accessing' }
DragonMakeAllReferences >> references [

	^ self singleReferences , self multiReferences
]

{ #category : 'accessing' }
DragonMakeAllReferences >> rootObject [

	^ rootObject
]

{ #category : 'accessing' }
DragonMakeAllReferences >> rootObject: anObject [

	rootObject := anObject
]

{ #category : 'accessing' }
DragonMakeAllReferences >> rootReference [

	^ rootReference
]

{ #category : 'accessing' }
DragonMakeAllReferences >> rootReference: anObject [

	rootReference := anObject
]

{ #category : 'accessing' }
DragonMakeAllReferences >> singleReferences [

	^ singleReferences
]

{ #category : 'accessing' }
DragonMakeAllReferences >> sourcesDictionary [

	^ sourcesDictionary
]

{ #category : 'accessing' }
DragonMakeAllReferences >> sourcesDictionary: anObject [

	sourcesDictionary := anObject
]

{ #category : 'accessing' }
DragonMakeAllReferences >> targetsDictionary [

	^ targetsDictionary
]

{ #category : 'accessing' }
DragonMakeAllReferences >> targetsDictionary: anObject [

	targetsDictionary := anObject
]

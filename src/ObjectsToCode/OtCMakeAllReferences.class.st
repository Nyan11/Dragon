Class {
	#name : 'OtCMakeAllReferences',
	#superclass : 'OtCSerializationStep',
	#instVars : [
		'sourcesDictionary',
		'targetsDictionary',
		'rootObject',
		'rootReference',
		'singleReferences',
		'multiReferences',
		'referenceDictionary'
	],
	#category : 'ObjectsToCode-Serialization',
	#package : 'ObjectsToCode',
	#tag : 'Serialization'
}

{ #category : 'building' }
OtCMakeAllReferences >> addMultiReference: anObject [

	| reference |
	reference := self newReferenceFor: anObject.
	self multiReferences add: reference.
	^ reference
]

{ #category : 'building' }
OtCMakeAllReferences >> addSingleReference: anObject [

	| reference |
	reference := self newReferenceFor: anObject.
	self singleReferences add: reference.
	^ reference
]

{ #category : 'building' }
OtCMakeAllReferences >> build [

	self buildReferences.
	self buildReferenceGraph.
	self buildInternalStates.
]

{ #category : 'building' }
OtCMakeAllReferences >> buildInternalStates [

	self references do: [ :each |
		each internalStates: each object otcMetaInternalStates ]
]

{ #category : 'building' }
OtCMakeAllReferences >> buildReferenceGraph [

	self referenceDictionary keysAndValuesDo: [ :object :reference |
			reference relations do: [ :relation |
					reference
						addNextReference: (self referenceDictionary at: relation target)
						withAttribute: relation attribute ] ]
]

{ #category : 'building' }
OtCMakeAllReferences >> buildReferences [

	| isRootMulti |
	isRootMulti := false.
	self targetsDictionary keysAndValuesDo: [ :object :relation |
			(self shouldCreateVariable: object)
				ifFalse: [ self addSingleReference: object ]
				ifTrue: [
						object = self rootObject
							ifTrue: [
									self rootReference: (self addMultiReference: object).
									isRootMulti := true ]
							ifFalse: [
									relation size > 1
										ifTrue: [ self addMultiReference: object ]
										ifFalse: [ self addSingleReference: object ] ] ] ].
	isRootMulti ifTrue: [ ^ self ].
	self rootReference: (self addSingleReference: self rootObject)
]

{ #category : 'initialization' }
OtCMakeAllReferences >> initialize [

	super initialize.
	singleReferences := OrderedCollection new.
	multiReferences := OrderedCollection new.
	referenceDictionary := OrderedDictionary new
]

{ #category : 'accessing' }
OtCMakeAllReferences >> multiReferences [

	^ multiReferences
]

{ #category : 'building' }
OtCMakeAllReferences >> newReferenceFor: anObject [

	| reference relations |
	relations := self sourcesDictionary at: anObject ifAbsent: [ {  } ].

	reference := OtCReference new
		             object: anObject;
		             relations: relations;
		             yourself.
	self referenceDictionary at: anObject put: reference.
	^ reference
]

{ #category : 'accessing' }
OtCMakeAllReferences >> referenceDictionary [

	^ referenceDictionary
]

{ #category : 'accessing' }
OtCMakeAllReferences >> references [

	^ self singleReferences , self multiReferences
]

{ #category : 'accessing' }
OtCMakeAllReferences >> rootObject [

	^ rootObject
]

{ #category : 'accessing' }
OtCMakeAllReferences >> rootObject: anObject [

	rootObject := anObject
]

{ #category : 'accessing' }
OtCMakeAllReferences >> rootReference [

	^ rootReference
]

{ #category : 'accessing' }
OtCMakeAllReferences >> rootReference: anObject [

	rootReference := anObject
]

{ #category : 'building' }
OtCMakeAllReferences >> shouldCreateVariable: anObject [

	^ anObject isLiteral not
]

{ #category : 'accessing' }
OtCMakeAllReferences >> singleReferences [

	^ singleReferences
]

{ #category : 'accessing' }
OtCMakeAllReferences >> sourcesDictionary [

	^ sourcesDictionary
]

{ #category : 'accessing' }
OtCMakeAllReferences >> sourcesDictionary: anObject [

	sourcesDictionary := anObject
]

{ #category : 'accessing' }
OtCMakeAllReferences >> targetsDictionary [

	^ targetsDictionary
]

{ #category : 'accessing' }
OtCMakeAllReferences >> targetsDictionary: anObject [

	targetsDictionary := anObject
]

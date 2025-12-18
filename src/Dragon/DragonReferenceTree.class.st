Class {
	#name : 'DragonReferenceTree',
	#superclass : 'DragonSerializationStep',
	#instVars : [
		'rootReference',
		'singleReferences',
		'multiReferences'
	],
	#category : 'Dragon',
	#package : 'Dragon'
}

{ #category : 'accessing' }
DragonReferenceTree >> multiReferences [

	^ multiReferences
]

{ #category : 'accessing' }
DragonReferenceTree >> multiReferences: anObject [

	multiReferences := anObject
]

{ #category : 'accessing' }
DragonReferenceTree >> rootReference [

	^ rootReference
]

{ #category : 'accessing' }
DragonReferenceTree >> rootReference: anObject [

	rootReference := anObject
]

{ #category : 'accessing' }
DragonReferenceTree >> singleReferences [

	^ singleReferences
]

{ #category : 'accessing' }
DragonReferenceTree >> singleReferences: anObject [

	singleReferences := anObject
]

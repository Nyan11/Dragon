Class {
	#name : 'OtCInternalState',
	#superclass : 'Object',
	#instVars : [
		'target',
		'attribute',
		'setterForState'
	],
	#category : 'ObjectsToCode-Serialization',
	#package : 'ObjectsToCode',
	#tag : 'Serialization'
}

{ #category : 'accessing' }
OtCInternalState >> attribute [

	^ attribute
]

{ #category : 'accessing' }
OtCInternalState >> attribute: anObject [

	attribute := anObject
]

{ #category : 'accessing' }
OtCInternalState >> setterForState [

	^ setterForState
]

{ #category : 'accessing' }
OtCInternalState >> setterForState: anObject [

	setterForState := anObject
]

{ #category : 'accessing' }
OtCInternalState >> target [

	^ target
]

{ #category : 'accessing' }
OtCInternalState >> target: anObject [

	target := anObject
]

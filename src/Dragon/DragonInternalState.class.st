Class {
	#name : 'DragonInternalState',
	#superclass : 'Object',
	#instVars : [
		'target',
		'dragonAttribute',
		'setterForState'
	],
	#category : 'Dragon-Serialization',
	#package : 'Dragon',
	#tag : 'Serialization'
}

{ #category : 'accessing' }
DragonInternalState >> dragonAttribute [

	^ dragonAttribute
]

{ #category : 'accessing' }
DragonInternalState >> dragonAttribute: anObject [

	dragonAttribute := anObject
]

{ #category : 'accessing' }
DragonInternalState >> setterForState [

	^ setterForState
]

{ #category : 'accessing' }
DragonInternalState >> setterForState: anObject [

	setterForState := anObject
]

{ #category : 'accessing' }
DragonInternalState >> target [

	^ target
]

{ #category : 'accessing' }
DragonInternalState >> target: anObject [

	target := anObject
]

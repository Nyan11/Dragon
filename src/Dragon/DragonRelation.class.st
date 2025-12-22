Class {
	#name : 'DragonRelation',
	#superclass : 'Object',
	#instVars : [
		'source',
		'target',
		'dragonAttribute'
	],
	#category : 'Dragon-Serialization',
	#package : 'Dragon',
	#tag : 'Serialization'
}

{ #category : 'accessing' }
DragonRelation >> dragonAttribute [

	^ dragonAttribute
]

{ #category : 'accessing' }
DragonRelation >> dragonAttribute: anObject [

	dragonAttribute := anObject
]

{ #category : 'testing' }
DragonRelation >> isSimilarTo: aDragonRelation [

	^ (self target dragonEquals: aDragonRelation target) and: [
		self source dragonEquals: aDragonRelation source ]
]

{ #category : 'accessing' }
DragonRelation >> source [

	^ source
]

{ #category : 'accessing' }
DragonRelation >> source: anObject [

	source := anObject
]

{ #category : 'accessing' }
DragonRelation >> target [

	^ target
]

{ #category : 'accessing' }
DragonRelation >> target: anObject [

	target := anObject
]

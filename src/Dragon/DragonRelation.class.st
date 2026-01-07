Class {
	#name : 'DragonRelation',
	#superclass : 'Object',
	#instVars : [
		'source',
		'target',
		'dragonAttribute',
		'index'
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
DragonRelation >> dragonAttribute: arg1 [

	dragonAttribute := arg1
]

{ #category : 'testing' }
DragonRelation >> dragonEquals: aDragonRelation [

	^ (((self target dragonEquals: aDragonRelation target) and: [
		    self source dragonEquals: aDragonRelation source ]) and: [
		   self dragonAttribute dragonEquals:
			   aDragonRelation dragonAttribute ]) and: [
		  self index dragonEquals: aDragonRelation index ]
]

{ #category : 'accessing' }
DragonRelation >> index [

	^ index
]

{ #category : 'accessing' }
DragonRelation >> index: anObject [

	index := anObject
]

{ #category : 'accessing' }
DragonRelation >> source [

	^ source
]

{ #category : 'accessing' }
DragonRelation >> source: arg1 [

	source := arg1
]

{ #category : 'accessing' }
DragonRelation >> target [

	^ target
]

{ #category : 'accessing' }
DragonRelation >> target: arg1 [

	target := arg1
]

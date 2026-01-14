Class {
	#name : 'OtCRelation',
	#superclass : 'Object',
	#instVars : [
		'source',
		'target',
		'attribute',
		'index'
	],
	#category : 'ObjectsToCode-Serialization',
	#package : 'ObjectsToCode',
	#tag : 'Serialization'
}

{ #category : 'accessing' }
OtCRelation >> attribute [

	^ attribute
]

{ #category : 'accessing' }
OtCRelation >> attribute: anObject [

	attribute := anObject
]

{ #category : 'accessing' }
OtCRelation >> index [

	^ index
]

{ #category : 'accessing' }
OtCRelation >> index: anObject [

	index := anObject
]

{ #category : 'testing' }
OtCRelation >> otcEquals: aRelation [

	^ (((self target otcEquals: aRelation target) and: [
		    self source otcEquals: aRelation source ]) and: [
		   self attribute otcEquals:
			   aRelation attribute ]) and: [
		  self index otcEquals: aRelation index ]
]

{ #category : 'accessing' }
OtCRelation >> source [

	^ source
]

{ #category : 'accessing' }
OtCRelation >> source: arg1 [

	source := arg1
]

{ #category : 'accessing' }
OtCRelation >> target [

	^ target
]

{ #category : 'accessing' }
OtCRelation >> target: arg1 [

	target := arg1
]

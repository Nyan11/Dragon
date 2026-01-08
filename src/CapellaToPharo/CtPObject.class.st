Class {
	#name : 'CtPObject',
	#superclass : 'Object',
	#instVars : [
		'xmlNode',
		'xmlDocument',
		'xmlChildren'
	],
	#category : 'CapellaToPharo',
	#package : 'CapellaToPharo'
}

{ #category : 'accessing' }
CtPObject >> xmlChildren [

	^ xmlChildren
]

{ #category : 'accessing' }
CtPObject >> xmlChildren: anObject [

	xmlChildren := anObject
]

{ #category : 'accessing' }
CtPObject >> xmlDocument [

	^ xmlDocument
]

{ #category : 'accessing' }
CtPObject >> xmlDocument: anObject [

	xmlDocument := anObject
]

{ #category : 'accessing' }
CtPObject >> xmlNode [

	^ xmlNode
]

{ #category : 'accessing' }
CtPObject >> xmlNode: anObject [

	xmlNode := anObject
]

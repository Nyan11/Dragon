Class {
	#name : 'CtPCapellaObject',
	#superclass : 'Object',
	#instVars : [
		'xmlDocument',
		'xmlNode',
		'rule',
		'associatedXmlNodes'
	],
	#category : 'CapellaToPharo',
	#package : 'CapellaToPharo'
}

{ #category : 'accessing' }
CtPCapellaObject >> associatedXmlNodes [

	^ associatedXmlNodes
]

{ #category : 'accessing' }
CtPCapellaObject >> associatedXmlNodes: anObject [

	associatedXmlNodes := anObject
]

{ #category : 'printing' }
CtPCapellaObject >> printOn: aStream [

	super printOn: aStream.
	aStream << ' ('.
	(self xmlNode localName) printOn: aStream.
	aStream << ' | '.
	(self xmlNode attributeAt: 'name') printOn: aStream.
	aStream << ')'.
]

{ #category : 'accessing' }
CtPCapellaObject >> rule [

	^ rule
]

{ #category : 'accessing' }
CtPCapellaObject >> rule: anObject [

	rule := anObject
]

{ #category : 'accessing' }
CtPCapellaObject >> xmlDocument [

	^ xmlDocument
]

{ #category : 'accessing' }
CtPCapellaObject >> xmlDocument: anObject [

	xmlDocument := anObject
]

{ #category : 'accessing' }
CtPCapellaObject >> xmlNode [

	^ xmlNode
]

{ #category : 'accessing' }
CtPCapellaObject >> xmlNode: anObject [

	xmlNode := anObject
]

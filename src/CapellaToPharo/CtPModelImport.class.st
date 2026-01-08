Class {
	#name : 'CtPModelImport',
	#superclass : 'Object',
	#instVars : [
		'file',
		'capellaObjects',
		'capellaDocument'
	],
	#category : 'CapellaToPharo',
	#package : 'CapellaToPharo'
}

{ #category : 'building' }
CtPModelImport >> build [

	| nodes idRegex |
	self file ifNil: [ ^ self error: 'File must not be nil.' ].

	idRegex := '[0-9a-z]{8}-[0-9a-z]{4}-[0-9a-z]{4}-[0-9a-z]{4}-[0-9a-z]{12}' asRegex.
	nodes := ((XPath for: '//*[@id]') in: self capellaDocument) asArray.
	capellaObjects := nodes collect: [ :node | CtPObject new xmlNode: node; xmlDocument: self capellaDocument; yourself ].
	capellaObjects do: [ :ctpobject | ctpobject xmlChildren: (capellaObjects select: [ :each | ctpobject xmlNode nodes includes: each xmlNode])].
	capellaObjects do: [ :ctpobject | | attributesWithId onlyIds| attributesWithId := ctpobject xmlNode attributeNodes select: [ :attribute | attribute name ~= 'id' and: [ idRegex matches: attribute value] ].
		onlyIds := attributesWithId flatCollect: [ :attribute | idRegex matchesIn: attribute ].
		onlyIds do: [ :id | self halt ].
		].
	self halt
]

{ #category : 'accessing' }
CtPModelImport >> capellaDocument [

	^ capellaDocument
]

{ #category : 'accessing' }
CtPModelImport >> capellaObjects [

	^ capellaObjects
]

{ #category : 'accessing' }
CtPModelImport >> file [

	^ file
]

{ #category : 'accessing' }
CtPModelImport >> file: anObject [

	file := anObject.
	capellaDocument := XMLDOMParser parse: self file asFileReference contents.
]

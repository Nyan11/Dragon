Class {
	#name : 'CtPModelBuilder',
	#superclass : 'Object',
	#instVars : [
		'file',
		'capellaObjects',
		'capellaDocument'
	],
	#category : 'CapellaToPharo',
	#package : 'CapellaToPharo'
}

{ #category : 'examples' }
CtPModelBuilder class >> example [

	| filesystem file model |
	filesystem := FileSystem memory.
	file := filesystem workingDirectory / 'CtPTest.CAPELLA'.
	file writeStreamDo: [ :stream |
		stream nextPutAll: CtPModelBuilderTest new capellaFileContent ].
	model := CtPModelBuilder new
		         file: file;
		         build.
	model inspect
	
]

{ #category : 'building' }
CtPModelBuilder >> build [

	self file ifNil: [ ^ self error: 'File must not be nil.' ].

	self createCapellaObjects.
	self fixRealtionsBetweenObjects.

]

{ #category : 'accessing' }
CtPModelBuilder >> capellaDocument [

	^ capellaDocument
]

{ #category : 'accessing' }
CtPModelBuilder >> capellaObjects [

	^ capellaObjects
]

{ #category : 'building' }
CtPModelBuilder >> createCapellaObjects [

	| nodes |
	nodes := ((XPath for: '//*[@id]') in: self capellaDocument) asArray.
	capellaObjects := nodes collect: [ :node |
			                  CtPObject new
				                  xmlNode: node;
				                  xmlDocument: self capellaDocument;
				                  id: (node attributeAt: 'id');
				                  type: (node attributeAt: 'xsi:type');
				                  name: (node attributeAt: 'name');
				                  yourself ]
]

{ #category : 'accessing' }
CtPModelBuilder >> file [

	^ file
]

{ #category : 'accessing' }
CtPModelBuilder >> file: anObject [

	file := anObject.
	capellaDocument := XMLDOMParser parse: self file asFileReference contents.
]

{ #category : 'building' }
CtPModelBuilder >> fixRealtionsBetweenObjects [

	| idRegex |
	idRegex := '[0-9a-z]{8}-[0-9a-z]{4}-[0-9a-z]{4}-[0-9a-z]{4}-[0-9a-z]{12}'
		           asRegex.
	self capellaObjects do: [ :ctpobjectSource |
			| onlyNamesAndIds childrenNodes |
			childrenNodes := ctpobjectSource xmlNode nodes.
			onlyNamesAndIds := ctpobjectSource xmlNode attributeNodes asArray
				                   collect: [ :attribute |
						                   attribute name = 'id'
							                   ifTrue: [ {  } ]
							                   ifFalse: [
							                   attribute name
							                   -> (idRegex matchesIn: attribute value) ] ].
			self capellaObjects do: [ :ctpobjectTarget |
					(childrenNodes includes: ctpobjectTarget xmlNode) ifTrue: [
						ctpobjectSource addChild: ctpobjectTarget ].
					onlyNamesAndIds do: [ :asso |
							(asso value includes:
								 (ctpobjectTarget id)) ifTrue: [
								ctpobjectSource
									addAttributeName: asso key
									value: ctpobjectTarget ] ] ] ]
]

{ #category : 'as yet unclassified' }
CtPModelBuilder >> selectFunctionalExchanges [

	^ self selectType: 'org.polarsys.capella.core.data.fa:FunctionalExchange'
]

{ #category : 'as yet unclassified' }
CtPModelBuilder >> selectSystemFunctions [

	^ self selectType: 'org.polarsys.capella.core.data.ctx:SystemFunction'
]

{ #category : 'as yet unclassified' }
CtPModelBuilder >> selectType: aString [

	| selection |
	selection := self capellaObjects select: [ :obj |
		                       obj type
		                       =
		                       aString ].
	^ selection
]

Class {
	#name : 'CtPImportModel',
	#superclass : 'Object',
	#instVars : [
		'file',
		'capellaObjects',
		'capellaDocument'
	],
	#category : 'CapellaToPharo-Import',
	#package : 'CapellaToPharo',
	#tag : 'Import'
}

{ #category : 'examples' }
CtPImportModel class >> example [

	self modelForExample inspect
]

{ #category : 'examples' }
CtPImportModel class >> modelForExample [

	| filesystem file model |
	filesystem := FileSystem memory.
	file := filesystem workingDirectory / 'CtPTest.CAPELLA'.
	file writeStreamDo: [ :stream |
		stream nextPutAll: CtPImportModelTest new capellaFileContent ].
	model := CtPImportModel new
		         file: file;
		         build.
	^ model
]

{ #category : 'converting' }
CtPImportModel >> asSAModel [

	^ CtPSAModel new capellaModel: self; yourself	
]

{ #category : 'building' }
CtPImportModel >> build [

	self file ifNil: [ ^ self error: 'File must not be nil.' ].

	self createCapellaObjects.
	self fixRealtionsBetweenObjects.

]

{ #category : 'accessing' }
CtPImportModel >> capellaDocument [

	^ capellaDocument
]

{ #category : 'accessing' }
CtPImportModel >> capellaObjects [

	^ capellaObjects
]

{ #category : 'building' }
CtPImportModel >> createCapellaObjects [

	| nodes |
	nodes := ((XPath for: '//*[@id]') in: self capellaDocument) asArray.
	capellaObjects := nodes collect: [ :node |
			                  CtPImportObject new
				                  xmlNode: node;
				                  xmlDocument: self capellaDocument;
				                  id: (node attributeAt: 'id');
				                  type: (node attributeAt: 'xsi:type');
				                  name: (node attributeAt: 'name');
				                  yourself ]
]

{ #category : 'accessing' }
CtPImportModel >> file [

	^ file
]

{ #category : 'accessing' }
CtPImportModel >> file: anObject [

	file := anObject.
	capellaDocument := XMLDOMParser parse: self file asFileReference contents.
]

{ #category : 'building' }
CtPImportModel >> fixRealtionsBetweenObjects [

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
CtPImportModel >> inspectorCapellaGraph: aBuilder [

	<inspectorPresentationOrder: 1000 title: 'CtP Map'>
	| objects canvas |
	objects := self capellaObjects.


	canvas := self rsCapellaGraphForObject: objects.

	^ (aBuilder instantiate: SpRoassalInspectorPresenter)
		  canvas: canvas;
		  yourself
]

{ #category : 'as yet unclassified' }
CtPImportModel >> rsCapellaGraphForObject: aCollection [

	| shapes canvas layout |
	shapes := aCollection
		          collect: [ :each | each asRSShapeForInspection ]
		          as: OrderedCollection.

	canvas := RSCanvas new.
	canvas addAll: shapes.
	canvas @ RSCanvasController.
	canvas shapes @ RSHighlightable red.

	RSLineBuilder line
		color: Color black;
		canvas: canvas;
		shapes: shapes;
		connectFromAll: #linkedCapellaObjects.

	layout := RSForceBasedLayout new
		          nodes: shapes;
		          edges: canvas lines;
		          start;
		          yourself.
	canvas newAnimation repeat onStepDo: [ :t | layout step ].
	^ canvas

]

{ #category : 'as yet unclassified' }
CtPImportModel >> selectFunctionalExchanges [

	^ self selectType: 'org.polarsys.capella.core.data.fa:FunctionalExchange'
]

{ #category : 'as yet unclassified' }
CtPImportModel >> selectSystemActors [

	^ self selectType: 'org.polarsys.capella.core.data.ctx:Actor'
]

{ #category : 'as yet unclassified' }
CtPImportModel >> selectSystemFunctionnalExchanges [

	^ (self selectType:
		  'org.polarsys.capella.core.data.fa:FunctionalExchange') select: [ :each | each isSystemAnalysis ]
]

{ #category : 'as yet unclassified' }
CtPImportModel >> selectSystemFunctions [

	^ self selectType: 'org.polarsys.capella.core.data.ctx:SystemFunction'
]

{ #category : 'as yet unclassified' }
CtPImportModel >> selectSystemSystem [

	^ (self selectType:
		  'org.polarsys.capella.core.data.ctx:System') first
]

{ #category : 'as yet unclassified' }
CtPImportModel >> selectType: aString [

	| selection |
	selection := self capellaObjects select: [ :obj |
		                       obj type
		                       =
		                       aString ].
	^ selection
]

{ #category : 'as yet unclassified' }
CtPImportModel >> selectTypeBeginsWith: aString [

	| selection |
	selection := self capellaObjects select: [ :obj | obj type beginsWith: aString ].
	^ selection
]

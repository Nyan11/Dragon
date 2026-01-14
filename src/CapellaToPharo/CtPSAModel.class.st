Class {
	#name : 'CtPSAModel',
	#superclass : 'Object',
	#instVars : [
		'capellaModel',
		'actors',
		'functions',
		'functionnalExchanges',
		'systems'
	],
	#category : 'CapellaToPharo-System Analysis',
	#package : 'CapellaToPharo',
	#tag : 'System Analysis'
}

{ #category : 'examples' }
CtPSAModel class >> example [

	CtPImportModel modelForExample asSAModel inspect
]

{ #category : 'examples' }
CtPSAModel class >> example2 [

	CtPImportModel modelForExample2 asSAModel inspect
]

{ #category : 'accessing' }
CtPSAModel >> actors [

	^ actors
]

{ #category : 'building' }
CtPSAModel >> build [

	systems := self capellaModel selectSystemSystems collect:
		          #asSystemComponent.
	actors := self capellaModel selectSystemActors collect:
		          #asSystemComponent.
	functions := self capellaModel selectSystemFunctions collect:
		             #asSystemFunction.
	functionnalExchanges := self capellaModel
		                        selectSystemFunctionnalExchanges collect:
		                        #asSystemFunctionnalExchange.

	systems do: [ :system | system  linksToFunctionsIn: functions ].
	actors do: [ :actor | actor linksToFunctionsIn: functions ].
	functionnalExchanges do: [ :fexchange | fexchange linksToFunctionsIn: functions ]

]

{ #category : 'accessing' }
CtPSAModel >> capellaModel [

	^ capellaModel
]

{ #category : 'accessing' }
CtPSAModel >> capellaModel: anObject [

	capellaModel := anObject.
	self build
]

{ #category : 'accessing' }
CtPSAModel >> functionnalExchanges [

	^ functionnalExchanges
]

{ #category : 'accessing' }
CtPSAModel >> functions [

	^ functions
]

{ #category : 'as yet unclassified' }
CtPSAModel >> inspectorCapellaGraph: aBuilder [

	<inspectorPresentationOrder: 1000 title: 'CtP SA Map'>
	| objects canvas |
	objects := actors , functions , functionnalExchanges, systems.


	canvas := self rsCapellaGraphForObject: objects.

	^ (aBuilder instantiate: SpRoassalInspectorPresenter)
		  canvas: canvas;
		  yourself
]

{ #category : 'as yet unclassified' }
CtPSAModel >> rsCapellaGraphForObject: aCollection [

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
		connectFromAll: #rsNextObjects.

	layout := RSForceBasedLayout new
		          nodes: shapes;
		          edges: canvas lines;
		          start;
		          yourself.
	canvas newAnimation repeat onStepDo: [ :t | layout step ].
	^ canvas
]

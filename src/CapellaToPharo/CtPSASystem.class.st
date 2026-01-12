Class {
	#name : 'CtPSASystem',
	#superclass : 'CtPSAObject',
	#instVars : [
		'functions'
	],
	#category : 'CapellaToPharo',
	#package : 'CapellaToPharo'
}

{ #category : 'instance creation' }
CtPSASystem >> functions: aCollection [ 
	functions := aCollection 
]

{ #category : 'as yet unclassified' }
CtPSASystem >> linksToFunctionsIn: aCollection [ 

	| capellaFunctions functionsToAdd |
	capellaFunctions := (self capellaObject children select: [:each | each type = 'org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation']) flatCollect: [ :each | each attributes at: #targetElement ].
	functionsToAdd := aCollection select: [ :each | capellaFunctions includes: each capellaObject ].
	self functions: functionsToAdd
]

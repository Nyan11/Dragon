Class {
	#name : 'CtPSAComponent',
	#superclass : 'CtPSAObject',
	#instVars : [
		'functions'
	],
	#category : 'CapellaToPharo-System Analysis',
	#package : 'CapellaToPharo',
	#tag : 'System Analysis'
}

{ #category : 'accessing' }
CtPSAComponent >> functions [

	^ functions
]

{ #category : 'instance creation' }
CtPSAComponent >> functions: aCollection [

	functions := aCollection
]

{ #category : 'as yet unclassified' }
CtPSAComponent >> linksToFunctionsIn: aCollection [

	| capellaFunctions functionsToAdd |
	capellaFunctions := (self capellaObject children select: [ :each |
			                     each type
			                     =
			                     'org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation' ])
		                    flatCollect: [ :each |
		                    each attributes at: #targetElement ].
	functionsToAdd := aCollection select: [ :each |
		                  capellaFunctions includes: each capellaObject ].
	functionsToAdd do: [ :each | each beAllocated ].
	self functions: functionsToAdd
]

{ #category : 'as yet unclassified' }
CtPSAComponent >> rsNextObjects [

	^ functions
]

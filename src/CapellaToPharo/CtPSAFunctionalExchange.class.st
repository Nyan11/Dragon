Class {
	#name : 'CtPSAFunctionalExchange',
	#superclass : 'CtPSAObject',
	#instVars : [
		'functions',
		'source',
		'target',
		'exchangedItems'
	],
	#category : 'CapellaToPharo',
	#package : 'CapellaToPharo'
}

{ #category : 'as yet unclassified' }
CtPSAFunctionalExchange >> linksToFunctionsIn: aCollection [

	source := aCollection select: [ :each |
			          ((self capellaObject attributes at: #source) collect: #parent) includes:
				          each capellaObject ].
	target := aCollection select: [ :each |
			          ((self capellaObject attributes at: #target) collect: #parent) includes:
				          each capellaObject ].
	exchangedItems := self capellaObject attributes
		                  at: #exchangedItems
		                  ifPresent: [ :obj | obj collect: #name ]
]

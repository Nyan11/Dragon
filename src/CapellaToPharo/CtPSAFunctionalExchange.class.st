Class {
	#name : 'CtPSAFunctionalExchange',
	#superclass : 'CtPSAObject',
	#instVars : [
		'source',
		'target',
		'exchangedItems'
	],
	#category : 'CapellaToPharo',
	#package : 'CapellaToPharo'
}

{ #category : 'accessing' }
CtPSAFunctionalExchange >> exchangedItems [

	^ exchangedItems
]

{ #category : 'accessing' }
CtPSAFunctionalExchange >> exchangedItems: anObject [

	exchangedItems := anObject
]

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

{ #category : 'as yet unclassified' }
CtPSAFunctionalExchange >> rsNextObjects [

	^ self source , self target
]

{ #category : 'as yet unclassified' }
CtPSAFunctionalExchange >> rsShapeColorForInspection [

	^ Color orange
]

{ #category : 'accessing' }
CtPSAFunctionalExchange >> source [

	^ source
]

{ #category : 'accessing' }
CtPSAFunctionalExchange >> source: anObject [

	source := anObject
]

{ #category : 'accessing' }
CtPSAFunctionalExchange >> target [

	^ target
]

{ #category : 'accessing' }
CtPSAFunctionalExchange >> target: anObject [

	target := anObject
]

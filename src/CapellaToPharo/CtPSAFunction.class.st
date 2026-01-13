Class {
	#name : 'CtPSAFunction',
	#superclass : 'CtPSAObject',
	#instVars : [
		'isAllocated'
	],
	#category : 'CapellaToPharo-System Analysis',
	#package : 'CapellaToPharo',
	#tag : 'System Analysis'
}

{ #category : 'initialization' }
CtPSAFunction >> beAllocated [

	isAllocated := true
]

{ #category : 'initialization' }
CtPSAFunction >> initialize [

	super initialize.
	isAllocated := false
]

{ #category : 'initialization' }
CtPSAFunction >> isAllocated [

	^ isAllocated
]

{ #category : 'as yet unclassified' }
CtPSAFunction >> rsShapeColorForInspection [

	^ Color blue
]

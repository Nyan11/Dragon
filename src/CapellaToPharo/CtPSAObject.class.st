Class {
	#name : 'CtPSAObject',
	#superclass : 'Object',
	#instVars : [
		'capellaObject',
		'name'
	],
	#category : 'CapellaToPharo-System Analysis',
	#package : 'CapellaToPharo',
	#tag : 'System Analysis'
}

{ #category : 'as yet unclassified' }
CtPSAObject >> asRSShapeForInspection [

	| shape |
	shape := RSBox model: self.
	shape @ RSPopup.
	shape draggable.
	shape color: self rsShapeColorForInspection.
	^ shape
]

{ #category : 'accessing' }
CtPSAObject >> capellaObject [

	^ capellaObject
]

{ #category : 'accessing' }
CtPSAObject >> capellaObject: anObject [

	capellaObject := anObject
]

{ #category : 'accessing' }
CtPSAObject >> name [

	^ name
]

{ #category : 'accessing' }
CtPSAObject >> name: anObject [

	name := anObject
]

{ #category : 'as yet unclassified' }
CtPSAObject >> rsNextObjects [

	^ {  }
]

{ #category : 'as yet unclassified' }
CtPSAObject >> rsShapeColorForInspection [

	^ Color gray
]

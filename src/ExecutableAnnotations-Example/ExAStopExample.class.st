Class {
	#name : 'ExAStopExample',
	#superclass : 'Object',
	#instVars : [
		'isOpenForCars'
	],
	#category : 'ExecutableAnnotations-Example',
	#package : 'ExecutableAnnotations-Example'
}

{ #category : 'accessing' }
ExAStopExample >> beCloseForCars [

	isOpenForCars := false
]

{ #category : 'accessing' }
ExAStopExample >> beOpenForCars [

	isOpenForCars := true
]

{ #category : 'initialization' }
ExAStopExample >> initialize [

	super initialize.
	isOpenForCars := true
]

{ #category : 'testing' }
ExAStopExample >> isCloseForCars [
	^ self isOpenForCars not.
]

{ #category : 'accessing' }
ExAStopExample >> isOpenForCars [

	^ isOpenForCars
]

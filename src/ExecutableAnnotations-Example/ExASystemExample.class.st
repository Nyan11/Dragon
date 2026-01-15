Class {
	#name : 'ExASystemExample',
	#superclass : 'Object',
	#instVars : [
		'train',
		'stop',
		'trainWantsToLeave'
	],
	#category : 'ExecutableAnnotations-Example',
	#package : 'ExecutableAnnotations-Example'
}

{ #category : 'accessing' }
ExASystemExample >> allowCars [

	stop beOpenForCars.
	self verifyAutorisation
]

{ #category : 'accessing' }
ExASystemExample >> blockCars [

	stop beCloseForCars.
	self verifyAutorisation
]

{ #category : 'examples' }
ExASystemExample >> example1 [

	stop beCloseForCars.
	self trainWantsToLeave.
	self deny: train isInStation
]

{ #category : 'examples' }
ExASystemExample >> example2 [

	stop beOpenForCars.
	self trainWantsToLeave.
	self assert: train isInStation
]

{ #category : 'initialization' }
ExASystemExample >> initialize [

	super initialize.
	train := ExATrainExample new.
	stop := ExAStopExample new.
	
	stop beOpenForCars.
	train beInStation.
]

{ #category : 'accessing' }
ExASystemExample >> stop [

	^ stop
]

{ #category : 'accessing' }
ExASystemExample >> train [

	^ train
]

{ #category : 'accessing' }
ExASystemExample >> trainWantsToLeave [

	trainWantsToLeave := true.
	self verifyAutorisation
]

{ #category : 'accessing' }
ExASystemExample >> verifyAutorisation [

	trainWantsToLeave ifFalse: [ ^ self  ].
	self stop isCloseForCars
		ifTrue: [ self train allowCrossing ]
		ifFalse: [ self train disallowCrossing ]
]

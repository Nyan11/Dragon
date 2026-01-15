Class {
	#name : 'PNSimulation',
	#superclass : 'Object',
	#instVars : [
		'system',
		'kill',
		'random',
		'play'
	],
	#category : 'PassageNiveau-user-interface',
	#package : 'PassageNiveau',
	#tag : 'user-interface'
}

{ #category : 'initialization' }
PNSimulation >> addTrainOnSimulation [

	(self random nextIntegerBetween: 1 and: 30) = 1 ifFalse: [ ^ self ].
	system trainArriveEnGare: self newTrain
]

{ #category : 'initialization' }
PNSimulation >> initialize [

	super initialize.
	kill := false.
	random := Random new.
	system := PNSystemeRegulation new.
	play := true.
	[
		[ self kill not ] whileTrue: [
		self play ifTrue: [ self addTrainOnSimulation.
				system tempsAbsolu: Time now.
				system updateUI. ].
				(Duration milliSeconds: 100) wait ] ] forkAt:
		Processor userBackgroundPriority
]

{ #category : 'accessing' }
PNSimulation >> kill [

	^ kill
]

{ #category : 'accessing' }
PNSimulation >> kill: anObject [

	kill := anObject
]

{ #category : 'initialization' }
PNSimulation >> newTrain [

	^ PNTrain new
		nom: (self random nextIntegerBetween: 1000 and: 9999) printString;
		tempsDepart:
			(Time now addSeconds: (self random nextIntegerBetween: 1 and: 30));
		yourself
]

{ #category : 'accessing' }
PNSimulation >> pause [

	play := false
]

{ #category : 'accessing' }
PNSimulation >> play [

	play := true
]

{ #category : 'initialization' }
PNSimulation >> random [

	^ random
]

{ #category : 'accessing' }
PNSimulation >> system [

	^ system
]

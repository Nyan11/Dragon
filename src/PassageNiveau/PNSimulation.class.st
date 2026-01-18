Class {
	#name : 'PNSimulation',
	#superclass : 'Object',
	#instVars : [
		'systeme',
		'random',
		'ui',
		'processModelBlock',
		'simulationTime',
		'isPlaying',
		'processUIBlock',
		'procModel',
		'procUI'
	],
	#category : 'PassageNiveau-user-interface',
	#package : 'PassageNiveau',
	#tag : 'user-interface'
}

{ #category : 'initialization' }
PNSimulation >> initialize [

	super initialize.
	random := Random new.
	systeme := PNSystemeRegulationModel new.
	ui := PNSystemeRegulationUI new.
	ui systemeRegulation: systeme.
	isPlaying := false.
	simulationTime := Time new.

	processModelBlock := [
		                     [ true ] whileTrue: [
				                     self isPlaying ifTrue: [
					                     self updateSimulation ].
				                     (Duration milliSeconds:
					                      self speedOfSimulation) wait ] ].
	processUIBlock := [
		                  [ true ] whileTrue: [
				                  self isPlaying ifTrue: [ self updateUI ].
				                  (Duration milliSeconds:
					                   self speedOfUserInterface) wait ] ].
]

{ #category : 'testing' }
PNSimulation >> isPlaying [

	^ isPlaying
]

{ #category : 'accessing' }
PNSimulation >> pause [

	isPlaying := false
]

{ #category : 'accessing' }
PNSimulation >> play [

	isPlaying := true
]

{ #category : 'initialization' }
PNSimulation >> random [

	^ random
]

{ #category : 'initialization' }
PNSimulation >> simulationTime [

	^ simulationTime
]

{ #category : 'initialization' }
PNSimulation >> simulationTime: aTime [

	simulationTime := aTime
]

{ #category : 'initialization' }
PNSimulation >> speedOfSimulation [

	^ 200
]

{ #category : 'initialization' }
PNSimulation >> speedOfUserInterface [

   ^ 100
]

{ #category : 'as yet unclassified' }
PNSimulation >> startSimulation [

	procModel := processModelBlock forkAt:
		             Processor userBackgroundPriority.
	procUI := processUIBlock forkAt: Processor userBackgroundPriority.
	self ui open.
	self play.
	
]

{ #category : 'as yet unclassified' }
PNSimulation >> stopSimulation [

	procModel terminate.
	procUI terminate
]

{ #category : 'initialization' }
PNSimulation >> systeme [

	^ systeme
]

{ #category : 'as yet unclassified' }
PNSimulation >> ui [

	^ ui
]

{ #category : 'initialization' }
PNSimulation >> updateSimulation [

	| train |
	(self simulationTime ticks at: 2) >= 84000
		ifFalse: [
		self simulationTime: (self simulationTime addSeconds: 60) ]
		ifTrue: [ self simulationTime: Time new ].
	self systeme tempsAbsolu: self simulationTime.

	self systeme voiturePasse: (self simulationTime minutes < 30).

	(self simulationTime ticks at: 2) >= 80000 ifTrue: [ ^ self ].
	(self random nextIntegerBetween: 1 and: 10) = 1 ifFalse: [ ^ self ].

	train := PNTrainModel new
		         nom:
			         (self random nextIntegerBetween: 1000 and: 9999)
				         printString;
		         tempsDepart: (self simulationTime addSeconds:
					          60 * (self random nextIntegerBetween: 1 and: 40));
		         delaiDeDemarage: 5;
		         yourself.

	self systeme trainArriveEnGare: train
]

{ #category : 'initialization' }
PNSimulation >> updateUI [

	self ui updateUI
]

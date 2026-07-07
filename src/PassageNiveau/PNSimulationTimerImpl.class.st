Class {
	#name : 'PNSimulationTimerImpl',
	#superclass : 'MolAbstractComponentImpl',
	#traits : 'PNSimulationTimerType + PNSimulationTimerServices',
	#classTraits : 'PNSimulationTimerType classTrait + PNSimulationTimerServices classTrait',
	#instVars : [
		'simulationTime',
		'simulationInterval',
		'simulationThread'
	],
	#category : 'PassageNiveau-molecule',
	#package : 'PassageNiveau',
	#tag : 'molecule'
}

{ #category : 'life cycle' }
PNSimulationTimerImpl >> componentActivate [
	"Start a thread to simulate sending of the geo position and accuracy precision each second"

	simulationThread := [
		                    [ true ] whileTrue: [
				                    (Delay forSeconds: 1) wait.
				                    self updateTime ] ] forkAt:
		                    Processor userBackgroundPriority
]

{ #category : 'as yet unclassified' }
PNSimulationTimerImpl >> componentInitialize [

	super componentInitialize.
	simulationTime := Time new.
	simulationInterval := 60
]

{ #category : 'life cycle' }
PNSimulationTimerImpl >> componentPassivate [

	simulationThread ifNotNil: [ :e | e terminate ].
	simulationThread := nil
]

{ #category : 'private - time' }
PNSimulationTimerImpl >> currentTime [

	^ simulationTime
]

{ #category : 'component accessing' }
PNSimulationTimerImpl >> getPNSimulationTimerEventsNotifier [
	^self eventsNotifiers at: PNSimulationTimerEvents ifAbsent: [^MolNotFoundEventsNotifier new interface: PNSimulationTimerEvents name: nil].
]

{ #category : 'accessing' }
PNSimulationTimerImpl >> updateTime [

	(simulationTime ticks at: 2) >= (86400 - simulationInterval)
		ifTrue: [ simulationTime := Time new ]
		ifFalse: [
		simulationTime := simulationTime addSeconds: simulationInterval ].

	self getPNSimulationTimerEventsNotifier updateTime:
		simulationTime
]

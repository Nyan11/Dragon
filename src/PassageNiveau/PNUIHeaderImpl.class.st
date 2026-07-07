Class {
	#name : 'PNUIHeaderImpl',
	#superclass : 'SpPresenter',
	#traits : 'MolComponentImpl + PNUIHeaderType + PNSimulationTimerEvents',
	#classTraits : 'MolComponentImpl classTrait + PNUIHeaderType classTrait + PNSimulationTimerEvents classTrait',
	#instVars : [
		'temps',
		'etatBarriere'
	],
	#category : 'PassageNiveau-molecule',
	#package : 'PassageNiveau',
	#tag : 'molecule'
}

{ #category : 'life cycle' }
PNUIHeaderImpl >> componentActivate [

	self getPNSimulationTimerEventsSubscriber subscribe: self
]

{ #category : 'life cycle' }
PNUIHeaderImpl >> componentRemove [

	self getPNSimulationTimerEventsSubscriber unsubscribe: self
]

{ #category : 'initialization - deprecated' }
PNUIHeaderImpl >> defaultLayout [

	^ SpBoxLayout newVertical add: temps; add: etatBarriere; yourself.
]

{ #category : 'component accessing' }
PNUIHeaderImpl >> getPNSimulationTimerEventsSubscriber [
	| eventsSymbol eventsSubscriber itf |
	itf := PNSimulationTimerEvents.
	eventsSymbol := self eventsSubscribers at: itf ifAbsent: [^MolNotFoundEventsSubscriber new interface: itf name: nil].
	eventsSymbol isCollection
	 	ifTrue: 
			[eventsSubscriber := MolComponentManager default locatorServices 
						searchEventsSubscriberFor: PNSimulationTimerEvents named: eventsSymbol ]. 
	^eventsSubscriber
]

{ #category : 'initialization - deprecated' }
PNUIHeaderImpl >> initializePresenter [

	temps := SpLabelPresenter new.
	etatBarriere := SpLabelPresenter new.
]

{ #category : 'protocol' }
PNUIHeaderImpl >> parametersDo: actionBlock ifNone: exceptionBlock [
	"Call the parameters if found with the parameters interface as argument. If none execute an exception block"

	actionBlock value: self
]

{ #category : 'protocol' }
PNUIHeaderImpl >> servicesDo: actionBlock ifNone: exceptionBlock [
	"Call the services if found with the services interface as argument. If none execute an exception block"

	actionBlock value: self
]

{ #category : 'accessing' }
PNUIHeaderImpl >> updateTime: atime [

	temps label: atime printString
]

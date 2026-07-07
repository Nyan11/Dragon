Class {
	#name : 'PNEquipementTrainImpl',
	#superclass : 'MolAbstractComponentImpl',
	#traits : 'PNEquipementTrainType + PNEquipementTrainServices + PNSimulationTimerEvents',
	#classTraits : 'PNEquipementTrainType classTrait + PNEquipementTrainServices classTrait + PNSimulationTimerEvents classTrait',
	#category : 'PassageNiveau-molecule',
	#package : 'PassageNiveau',
	#tag : 'molecule'
}

{ #category : 'as yet unclassified' }
PNEquipementTrainImpl >> autorisationDepart: unTrain [

	self getPNEquipementTrainEventsNotifier franchissementBarriere: unTrain
]

{ #category : 'nil' }
PNEquipementTrainImpl >> componentActivate [

	self getPNSimulationTimerEventsSubscriber subscribe: self
]

{ #category : 'life cycle' }
PNEquipementTrainImpl >> componentRemove [

	self getPNSimulationTimerEventsSubscriber unsubscribe: self
]

{ #category : 'component accessing' }
PNEquipementTrainImpl >> getPNEquipementTrainEventsNotifier [
	^self eventsNotifiers at: PNEquipementTrainEvents ifAbsent: [^MolNotFoundEventsNotifier new interface: PNEquipementTrainEvents name: nil].
]

{ #category : 'component accessing' }
PNEquipementTrainImpl >> getPNSimulationTimerEventsSubscriber [
	| eventsSymbol eventsSubscriber itf |
	itf := PNSimulationTimerEvents.
	eventsSymbol := self eventsSubscribers at: itf ifAbsent: [^MolNotFoundEventsSubscriber new interface: itf name: nil].
	eventsSymbol isCollection
	 	ifTrue: 
			[eventsSubscriber := MolComponentManager default locatorServices 
						searchEventsSubscriberFor: PNSimulationTimerEvents named: eventsSymbol ]. 
	^eventsSubscriber
]

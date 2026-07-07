Class {
	#name : 'PNSystemRegulationImpl',
	#superclass : 'MolAbstractComponentImpl',
	#traits : 'PNSystemRegulationType + PNEquipementTrainEvents + PNSystemInformationGareEvents + PNSimulationTimerEvents',
	#classTraits : 'PNSystemRegulationType classTrait + PNEquipementTrainEvents classTrait + PNSystemInformationGareEvents classTrait + PNSimulationTimerEvents classTrait',
	#category : 'PassageNiveau-molecule',
	#package : 'PassageNiveau',
	#tag : 'molecule'
}

{ #category : 'as yet unclassified' }
PNSystemRegulationImpl >> barriereFermee [

	^ barriereFermee
]

{ #category : 'accessing' }
PNSystemRegulationImpl >> barriereFermee: anObject [

	barriereFermee := anObject
]

{ #category : 'life cycle' }
PNSystemRegulationImpl >> componentActivate [

	self getPNSystemInformationGareEventsSubscriber subscribe: self.
	self getPNEquipementTrainEventsSubscriber subscribe: self.
	self getPNSimulationTimerEventsSubscriber subscribe: self.
	barriereFermee := true
]

{ #category : 'life cycle' }
PNSystemRegulationImpl >> componentRemove [

	self getPNSystemInformationGareEventsSubscriber unsubscribe: self.
	self getPNEquipementTrainEventsSubscriber unsubscribe: self.
	self getPNSimulationTimerEventsSubscriber unsubscribe: self
]

{ #category : 'component accessing' }
PNSystemRegulationImpl >> getPNEquipementTrainEventsSubscriber [
	| eventsSymbol eventsSubscriber itf |
	itf := PNEquipementTrainEvents.
	eventsSymbol := self eventsSubscribers at: itf ifAbsent: [^MolNotFoundEventsSubscriber new interface: itf name: nil].
	eventsSymbol isCollection
	 	ifTrue: 
			[eventsSubscriber := MolComponentManager default locatorServices 
						searchEventsSubscriberFor: PNEquipementTrainEvents named: eventsSymbol ]. 
	^eventsSubscriber
]

{ #category : 'component accessing' }
PNSystemRegulationImpl >> getPNEquipementTrainServicesProvider [
	| servicesSymbol servicesProvider itf |

	itf := PNEquipementTrainServices.
	servicesSymbol := self servicesProviders at: itf ifAbsent: [nil].
	(servicesSymbol isNil or:[servicesSymbol isSymbol not]) ifTrue: [ ^ MolNotFoundServicesProvider new interface: itf name: nil ].

	servicesProvider := MolComponentManager default locatorServices searchServicesProviderFor: PNEquipementTrainServices named: servicesSymbol.
	^servicesProvider
]

{ #category : 'component accessing' }
PNSystemRegulationImpl >> getPNSimulationTimerEventsSubscriber [
	| eventsSymbol eventsSubscriber itf |
	itf := PNSimulationTimerEvents.
	eventsSymbol := self eventsSubscribers at: itf ifAbsent: [^MolNotFoundEventsSubscriber new interface: itf name: nil].
	eventsSymbol isCollection
	 	ifTrue: 
			[eventsSubscriber := MolComponentManager default locatorServices 
						searchEventsSubscriberFor: PNSimulationTimerEvents named: eventsSymbol ]. 
	^eventsSubscriber
]

{ #category : 'component accessing' }
PNSystemRegulationImpl >> getPNSystemInformationGareEventsSubscriber [
	| eventsSymbol eventsSubscriber itf |
	itf := PNSystemInformationGareEvents.
	eventsSymbol := self eventsSubscribers at: itf ifAbsent: [^MolNotFoundEventsSubscriber new interface: itf name: nil].
	eventsSymbol isCollection
	 	ifTrue: 
			[eventsSubscriber := MolComponentManager default locatorServices 
						searchEventsSubscriberFor: PNSystemInformationGareEvents named: eventsSymbol ]. 
	^eventsSubscriber
]

{ #category : 'component accessing' }
PNSystemRegulationImpl >> getPNSystemInformationGareServicesProvider [
	| servicesSymbol servicesProvider itf |

	itf := PNSystemInformationGareServices.
	servicesSymbol := self servicesProviders at: itf ifAbsent: [nil].
	(servicesSymbol isNil or:[servicesSymbol isSymbol not]) ifTrue: [ ^ MolNotFoundServicesProvider new interface: itf name: nil ].

	servicesProvider := MolComponentManager default locatorServices searchServicesProviderFor: PNSystemInformationGareServices named: servicesSymbol.
	^servicesProvider
]

{ #category : 'as yet unclassified' }
PNSystemRegulationImpl >> trainEnPartence: unTrain auQuai: unNombre [

	self getPNEquipementTrainServicesProvider interdictionDepart: unTrain.
	
]

{ #category : 'accessing' }
PNSystemRegulationImpl >> updateTime: atime [

	| train |
	(atime minutes < 30 xor: self barriereFermee) ifFalse: [
		self barriereFermee: self barriereFermee not ].

	self barriereFermee ifFalse: [ ^ self ].

	train := self getPNSystemInformationGareServicesProvider
		         listeDesTrainsEnPartance first.
	self getPNEquipementTrainServicesProvider autorisationDepart: train
]

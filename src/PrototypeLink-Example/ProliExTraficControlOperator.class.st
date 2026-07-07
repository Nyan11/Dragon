Class {
	#name : 'ProliExTraficControlOperator',
	#superclass : 'MolAbstractComponentImpl',
	#traits : 'ProliExTraficControlOperatorType + ProliExDetectVehiculeStoppedOnTrackEvent + ProliExImplementArrivalProcedureEvent + ProliExImplementDepartureProcedureEvent + ProliExTestProperOperationEvent',
	#classTraits : 'ProliExTraficControlOperatorType classTrait + ProliExDetectVehiculeStoppedOnTrackEvent classTrait + ProliExImplementArrivalProcedureEvent classTrait + ProliExImplementDepartureProcedureEvent classTrait + ProliExTestProperOperationEvent classTrait',
	#category : 'PrototypeLink-Example-implementations',
	#package : 'PrototypeLink-Example',
	#tag : 'implementations'
}

{ #category : 'life cycle' }
ProliExTraficControlOperator >> componentActivate [

	self getProliExControlPowerSupplyToTrainsServiceProvider subscribe:
		self.
	self getProliExControlRoadDevicesServiceProvider subscribe: self.
	self getProliExControlRoadTrafficServiceProvider subscribe: self.
	self getProliExDetectVehiculeStoppedOnTrackEventSubscriber
		subscribe: self.
	self getProliExImplementArrivalProcedureEventSubscriber subscribe:
		self.
	self getProliExImplementDepartureProcedureEventSubscriber subscribe:
		self.
   self getProliExTestProperOperationEventSubscriber subscribe: self.
   self getProliExTestProperOperationServiceProvider subscribe: self
]

{ #category : 'life cycle' }
ProliExTraficControlOperator >> componentRemove [

	self getProliExControlPowerSupplyToTrainsServiceProvider
		unsubscribe: self.
	self getProliExControlRoadDevicesServiceProvider unsubscribe: self.
	self getProliExControlRoadTrafficServiceProvider unsubscribe: self.
	self getProliExDetectVehiculeStoppedOnTrackEventSubscriber
		unsubscribe: self.
	self getProliExImplementArrivalProcedureEventSubscriber unsubscribe:
		self.
	self getProliExImplementDepartureProcedureEventSubscriber
		unsubscribe: self.
	self getProliExTestProperOperationEventSubscriber unsubscribe: self.
	self getProliExTestProperOperationServiceProvider unsubscribe: self
]

{ #category : 'component accessing' }
ProliExTraficControlOperator >> getProliExControlPowerSupplyToTrainsServiceProvider [
	| servicesSymbol servicesProvider itf |

	itf := ProliExControlPowerSupplyToTrainsService.
	servicesSymbol := self servicesProviders at: itf ifAbsent: [nil].
	(servicesSymbol isNil or:[servicesSymbol isSymbol not]) ifTrue: [ ^ MolNotFoundServicesProvider new interface: itf name: nil ].

	servicesProvider := MolComponentManager default locatorServices searchServicesProviderFor: ProliExControlPowerSupplyToTrainsService named: servicesSymbol.
	^servicesProvider
]

{ #category : 'component accessing' }
ProliExTraficControlOperator >> getProliExControlRoadDevicesServiceProvider [
	| servicesSymbol servicesProvider itf |

	itf := ProliExControlRoadDevicesService.
	servicesSymbol := self servicesProviders at: itf ifAbsent: [nil].
	(servicesSymbol isNil or:[servicesSymbol isSymbol not]) ifTrue: [ ^ MolNotFoundServicesProvider new interface: itf name: nil ].

	servicesProvider := MolComponentManager default locatorServices searchServicesProviderFor: ProliExControlRoadDevicesService named: servicesSymbol.
	^servicesProvider
]

{ #category : 'component accessing' }
ProliExTraficControlOperator >> getProliExControlRoadTrafficServiceProvider [
	| servicesSymbol servicesProvider itf |

	itf := ProliExControlRoadTrafficService.
	servicesSymbol := self servicesProviders at: itf ifAbsent: [nil].
	(servicesSymbol isNil or:[servicesSymbol isSymbol not]) ifTrue: [ ^ MolNotFoundServicesProvider new interface: itf name: nil ].

	servicesProvider := MolComponentManager default locatorServices searchServicesProviderFor: ProliExControlRoadTrafficService named: servicesSymbol.
	^servicesProvider
]

{ #category : 'component accessing' }
ProliExTraficControlOperator >> getProliExDetectVehiculeStoppedOnTrackEventSubscriber [
	| eventsSymbol eventsSubscriber itf |
	itf := ProliExDetectVehiculeStoppedOnTrackEvent.
	eventsSymbol := self eventsSubscribers at: itf ifAbsent: [^MolNotFoundEventsSubscriber new interface: itf name: nil].
	eventsSymbol isCollection
	 	ifTrue: 
			[eventsSubscriber := MolComponentManager default locatorServices 
						searchEventsSubscriberFor: ProliExDetectVehiculeStoppedOnTrackEvent named: eventsSymbol ]. 
	^eventsSubscriber
]

{ #category : 'component accessing' }
ProliExTraficControlOperator >> getProliExImplementArrivalProcedureEventSubscriber [
	| eventsSymbol eventsSubscriber itf |
	itf := ProliExImplementArrivalProcedureEvent.
	eventsSymbol := self eventsSubscribers at: itf ifAbsent: [^MolNotFoundEventsSubscriber new interface: itf name: nil].
	eventsSymbol isCollection
	 	ifTrue: 
			[eventsSubscriber := MolComponentManager default locatorServices 
						searchEventsSubscriberFor: ProliExImplementArrivalProcedureEvent named: eventsSymbol ]. 
	^eventsSubscriber
]

{ #category : 'component accessing' }
ProliExTraficControlOperator >> getProliExImplementDepartureProcedureEventSubscriber [
	| eventsSymbol eventsSubscriber itf |
	itf := ProliExImplementDepartureProcedureEvent.
	eventsSymbol := self eventsSubscribers at: itf ifAbsent: [^MolNotFoundEventsSubscriber new interface: itf name: nil].
	eventsSymbol isCollection
	 	ifTrue: 
			[eventsSubscriber := MolComponentManager default locatorServices 
						searchEventsSubscriberFor: ProliExImplementDepartureProcedureEvent named: eventsSymbol ]. 
	^eventsSubscriber
]

{ #category : 'component accessing' }
ProliExTraficControlOperator >> getProliExTestProperOperationEventSubscriber [
	| eventsSymbol eventsSubscriber itf |
	itf := ProliExTestProperOperationEvent.
	eventsSymbol := self eventsSubscribers at: itf ifAbsent: [^MolNotFoundEventsSubscriber new interface: itf name: nil].
	eventsSymbol isCollection
	 	ifTrue: 
			[eventsSubscriber := MolComponentManager default locatorServices 
						searchEventsSubscriberFor: ProliExTestProperOperationEvent named: eventsSymbol ]. 
	^eventsSubscriber
]

{ #category : 'component accessing' }
ProliExTraficControlOperator >> getProliExTestProperOperationServiceProvider [
	| servicesSymbol servicesProvider itf |

	itf := ProliExTestProperOperationService.
	servicesSymbol := self servicesProviders at: itf ifAbsent: [nil].
	(servicesSymbol isNil or:[servicesSymbol isSymbol not]) ifTrue: [ ^ MolNotFoundServicesProvider new interface: itf name: nil ].

	servicesProvider := MolComponentManager default locatorServices searchServicesProviderFor: ProliExTestProperOperationService named: servicesSymbol.
	^servicesProvider
]

Class {
	#name : 'ProliExControlSystem',
	#superclass : 'MolAbstractComponentImpl',
	#traits : 'ProliExControlSystemType + ProliExControlRoadTrafficService + ProliExTestProperOperationService',
	#classTraits : 'ProliExControlSystemType classTrait + ProliExControlRoadTrafficService classTrait + ProliExTestProperOperationService classTrait',
	#category : 'PrototypeLink-Example-implementations',
	#package : 'PrototypeLink-Example',
	#tag : 'implementations'
}

{ #category : 'component accessing' }
ProliExControlSystem >> getProliExDetectVehiculeStoppedOnTrackEventNotifier [
	^self eventsNotifiers at: ProliExDetectVehiculeStoppedOnTrackEvent ifAbsent: [^MolNotFoundEventsNotifier new interface: ProliExDetectVehiculeStoppedOnTrackEvent name: nil].
]

{ #category : 'component accessing' }
ProliExControlSystem >> getProliExImplementArrivalProcedureEventNotifier [
	^self eventsNotifiers at: ProliExImplementArrivalProcedureEvent ifAbsent: [^MolNotFoundEventsNotifier new interface: ProliExImplementArrivalProcedureEvent name: nil].
]

{ #category : 'component accessing' }
ProliExControlSystem >> getProliExImplementDepartureProcedureEventNotifier [
	^self eventsNotifiers at: ProliExImplementDepartureProcedureEvent ifAbsent: [^MolNotFoundEventsNotifier new interface: ProliExImplementDepartureProcedureEvent name: nil].
]

{ #category : 'component accessing' }
ProliExControlSystem >> getProliExTestProperOperationEventNotifier [
	^self eventsNotifiers at: ProliExTestProperOperationEvent ifAbsent: [^MolNotFoundEventsNotifier new interface: ProliExTestProperOperationEvent name: nil].
]

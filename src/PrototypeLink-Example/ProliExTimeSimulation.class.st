Class {
	#name : 'ProliExTimeSimulation',
	#superclass : 'MolAbstractComponentImpl',
	#traits : 'ProliExTimeSimulationType + ProliExTimeSimulationService',
	#classTraits : 'ProliExTimeSimulationType classTrait + ProliExTimeSimulationService classTrait',
	#category : 'PrototypeLink-Example-implementations',
	#package : 'PrototypeLink-Example',
	#tag : 'implementations'
}

{ #category : 'component accessing' }
ProliExTimeSimulation >> getProliExTimeSimulationEventNotifier [
	^self eventsNotifiers at: ProliExTimeSimulationEvent ifAbsent: [^MolNotFoundEventsNotifier new interface: ProliExTimeSimulationEvent name: nil].
]

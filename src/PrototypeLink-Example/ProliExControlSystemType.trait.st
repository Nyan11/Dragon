Trait {
	#name : 'ProliExControlSystemType',
	#traits : 'MolComponentType',
	#classTraits : 'MolComponentType classTrait',
	#category : 'PrototypeLink-Example-types',
	#package : 'PrototypeLink-Example',
	#tag : 'types'
}

{ #category : 'accessing - events' }
ProliExControlSystemType classSide >> producedComponentEvents [

	<componentContract>
	^ {
		  ProliExDetectVehiculeStoppedOnTrackEvent.
		  ProliExImplementArrivalProcedureEvent.
		  ProliExImplementDepartureProcedureEvent.
		  ProliExTestProperOperationEvent }
]

{ #category : 'accessing - services' }
ProliExControlSystemType classSide >> providedComponentServices [

	<componentContract>
	^ {
		  ProliExControlRoadTrafficService.
		  ProliExTestProperOperationService }
]

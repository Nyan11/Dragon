Trait {
	#name : 'ProliExRailwayFacilitiesType',
	#traits : 'MolComponentType',
	#classTraits : 'MolComponentType classTrait',
	#category : 'PrototypeLink-Example-types',
	#package : 'PrototypeLink-Example',
	#tag : 'types'
}

{ #category : 'accessing - services' }
ProliExRailwayFacilitiesType classSide >> providedComponentServices [

	<componentContract>
	^ { ProliExControlPowerSupplyToTrainsService }
]

Trait {
	#name : 'PNSimulationTimerType',
	#traits : 'MolComponentType',
	#classTraits : 'MolComponentType classTrait',
	#category : 'PassageNiveau-molecule',
	#package : 'PassageNiveau',
	#tag : 'molecule'
}

{ #category : 'accessing - events' }
PNSimulationTimerType classSide >> producedComponentEvents [

	<componentContract>
	^ { PNSimulationTimerEvents }
]

{ #category : 'accessing - services' }
PNSimulationTimerType classSide >> providedComponentServices [

	<componentContract>
	^ { PNSimulationTimerServices }
]

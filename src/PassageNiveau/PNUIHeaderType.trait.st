Trait {
	#name : 'PNUIHeaderType',
	#traits : 'MolComponentType',
	#classTraits : 'MolComponentType classTrait',
	#category : 'PassageNiveau-molecule',
	#package : 'PassageNiveau',
	#tag : 'molecule'
}

{ #category : 'accessing - events' }
PNUIHeaderType classSide >> consumedComponentEvents [

	<componentContract>
	^ { PNSimulationTimerEvents }
]

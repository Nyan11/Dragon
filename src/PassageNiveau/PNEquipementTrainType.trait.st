Trait {
	#name : 'PNEquipementTrainType',
	#traits : 'MolComponentType',
	#classTraits : 'MolComponentType classTrait',
	#category : 'PassageNiveau-molecule',
	#package : 'PassageNiveau',
	#tag : 'molecule'
}

{ #category : 'accessing - events' }
PNEquipementTrainType classSide >> consumedComponentEvents [

	<componentContract>
	^ { PNSimulationTimerEvents }
]

{ #category : 'accessing - events' }
PNEquipementTrainType classSide >> producedComponentEvents [

	<componentContract>
	^ { PNEquipementTrainEvents }
]

{ #category : 'accessing - services' }
PNEquipementTrainType classSide >> providedComponentServices [

	<componentContract>
	^ { PNEquipementTrainServices }
]

Trait {
	#name : 'PNSystemRegulationType',
	#traits : 'MolComponentType',
	#classTraits : 'MolComponentType classTrait',
	#category : 'PassageNiveau-molecule',
	#package : 'PassageNiveau',
	#tag : 'molecule'
}

{ #category : 'accessing - events' }
PNSystemRegulationType classSide >> consumedComponentEvents [

	<componentContract>
	^ {
		  PNSystemInformationGareEvents.
		  PNEquipementTrainEvents.
		  PNSimulationTimerEvents }
]

{ #category : 'accessing - services' }
PNSystemRegulationType classSide >> usedComponentServices [

	<componentContract>
	^ { PNEquipementTrainServices . PNSystemInformationGareServices }
]

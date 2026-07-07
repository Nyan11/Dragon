Trait {
	#name : 'PNSystemInformationGareType',
	#traits : 'MolComponentType',
	#classTraits : 'MolComponentType classTrait',
	#category : 'PassageNiveau-molecule',
	#package : 'PassageNiveau',
	#tag : 'molecule'
}

{ #category : 'accessing - events' }
PNSystemInformationGareType classSide >> consumedComponentEvents [

	<componentContract>
	^ { PNSimulationTimerEvents }
]

{ #category : 'nil' }
PNSystemInformationGareType classSide >> producedComponentEvents [

	<componentContract>
	^ { PNSystemInformationGareEvents }
]

{ #category : 'accessing - services' }
PNSystemInformationGareType classSide >> providedComponentServices [

	<componentContract>
	^ { PNSystemInformationGareServices }
]

{ #category : 'accessing - services' }
PNSystemInformationGareType classSide >> usedComponentServices [

	<componentContract>
	^ { PNSimulationTimerServices }
]

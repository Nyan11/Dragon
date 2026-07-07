Trait {
	#name : 'PNUISystemInformationGareType',
	#traits : 'MolComponentType',
	#classTraits : 'MolComponentType classTrait',
	#category : 'PassageNiveau-molecule',
	#package : 'PassageNiveau',
	#tag : 'molecule'
}

{ #category : 'accessing - events' }
PNUISystemInformationGareType classSide >> consumedComponentEvents [

	<componentContract>
	^ { PNSystemInformationGareEvents }
]

{ #category : 'accessing - services' }
PNUISystemInformationGareType classSide >> usedComponentServices [

	<componentContract>
	^ { PNSystemInformationGareServices }
]

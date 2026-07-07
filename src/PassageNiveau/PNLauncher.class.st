Class {
	#name : 'PNLauncher',
	#superclass : 'Object',
	#category : 'PassageNiveau-molecule',
	#package : 'PassageNiveau',
	#tag : 'molecule'
}

{ #category : 'accessing' }
PNLauncher class >> start [

	<script: 'self start'>
	| header ssiGare |
	PNSystemInformationGareImpl start.
	PNSystemRegulationImpl start.
	PNEquipementTrainImpl start.
	PNSimulationTimerImpl start.

	ssiGare := PNUISystemInformationGareImpl start.
	header := PNUIHeaderImpl start.
	SpPresenter new
		layout: (SpBoxLayout newVertical
				 add: header expand: false;
				 add: ssiGare;
				 yourself);
		open
]

{ #category : 'accessing' }
PNLauncher class >> stop [

	<script: 'self stop'>
	PNSimulationTimerImpl stop.
	PNSystemInformationGareImpl stop.
	PNSystemRegulationImpl stop.
	PNEquipementTrainImpl stop.
	PNUISystemInformationGareImpl stop.
	PNUIHeaderImpl stop.
]

{ #category : 'nil' }
PNLauncher >> seeClassSide [ 
]

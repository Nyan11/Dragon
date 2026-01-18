Class {
	#name : 'PNSystemeRegulationModel',
	#superclass : 'Object',
	#instVars : [
		'voies',
		'tempsAbsolu',
		'voiturePasse'
	],
	#category : 'PassageNiveau-user-interface',
	#package : 'PassageNiveau',
	#tag : 'user-interface'
}

{ #category : 'initialization' }
PNSystemeRegulationModel >> initialize [

	super initialize.
	self exa: PNRequirements capellaFunction3.
	voies := Array new: self nbDeVoies.
	voiturePasse := true.

]

{ #category : 'initialization' }
PNSystemeRegulationModel >> nbDeVoies [

	^ 8
]

{ #category : 'accessing' }
PNSystemeRegulationModel >> tempsAbsolu [

	^ tempsAbsolu
]

{ #category : 'accessing' }
PNSystemeRegulationModel >> tempsAbsolu: anObject [

	
	tempsAbsolu := anObject.
	self trainsEnPartances do: [ :each |
			self exa: PNRequirements capellaFunction6.
			each autorisation: self voiturePasse not.
			each depart: self avecDelais: tempsAbsolu ]
]

{ #category : 'as yet unclassified' }
PNSystemeRegulationModel >> trainArriveEnGare: aTrain [

	| index |
	index := voies indexOf: nil.
	index = 0 ifTrue: [ ^ self ].
	aTrain tempsArrive: self tempsAbsolu.
	self voies at: index put: aTrain
]

{ #category : 'as yet unclassified' }
PNSystemeRegulationModel >> trainQuitteLaGare: aTrain [

	| index |
	self exa: PNRequirements capellaFunction7.
	index := voies indexOf: aTrain.
	self voies at: index put: nil
]

{ #category : 'as yet unclassified' }
PNSystemeRegulationModel >> trainsEnPartances [

	^ self voies select: [ :train | train ifNil: [ false ] ifNotNil: [ train trainEnPartence: self tempsAbsolu ] ].
]

{ #category : 'as yet unclassified' }
PNSystemeRegulationModel >> voies [

	^ voies
]

{ #category : 'accessing' }
PNSystemeRegulationModel >> voiturePasse [

	^ voiturePasse
]

{ #category : 'accessing' }
PNSystemeRegulationModel >> voiturePasse: anObject [

	voiturePasse := anObject
]

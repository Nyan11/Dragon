Class {
	#name : 'PNTrainModel',
	#superclass : 'Object',
	#instVars : [
		'nom',
		'tempsArrive',
		'tempsDepart',
		'autorisation',
		'delaiDeDemarage',
		'demarrer',
		'tempsDeDemarage'
	],
	#category : 'PassageNiveau-user-interface',
	#package : 'PassageNiveau',
	#tag : 'user-interface'
}

{ #category : 'accessing' }
PNTrainModel >> autorisation [

	^ autorisation
]

{ #category : 'accessing' }
PNTrainModel >> autorisation: anObject [

	self exa: PNRequirements capellaFunction5.
	autorisation := anObject
]

{ #category : 'as yet unclassified' }
PNTrainModel >> delaiDeDemarage [
	
	^ delaiDeDemarage
]

{ #category : 'as yet unclassified' }
PNTrainModel >> delaiDeDemarage: anInteger [

	delaiDeDemarage := anInteger
]

{ #category : 'as yet unclassified' }
PNTrainModel >> demarage: aTime [ 
	demarrer ifTrue: [ ^ self ].
	demarrer := true.
	tempsDeDemarage := aTime
]

{ #category : 'as yet unclassified' }
PNTrainModel >> depart: aSystemRegulation [

	self exa: PNRequirements capellaFunction1.
	aSystemRegulation trainQuitteLaGare: self
]

{ #category : 'as yet unclassified' }
PNTrainModel >> depart: aSystemRegulation avecDelais: aTime [

	self autorisation ifFalse: [ ^ self ].
	self exa: PNRequirements capellaFunction4.
	self demarage: aTime.
	(self tempsDeDemarage addSeconds: 60 * self delaiDeDemarage) < aTime
		ifTrue: [ self depart: aSystemRegulation ]
]

{ #category : 'initialization' }
PNTrainModel >> initialize [

	super initialize.
	autorisation := false.
	demarrer := false.
]

{ #category : 'accessing' }
PNTrainModel >> nom [

	^ nom
]

{ #category : 'accessing' }
PNTrainModel >> nom: anObject [

	nom := anObject
]

{ #category : 'accessing' }
PNTrainModel >> tempsArrive [

	^ tempsArrive
]

{ #category : 'accessing' }
PNTrainModel >> tempsArrive: anObject [

	tempsArrive := anObject
]

{ #category : 'as yet unclassified' }
PNTrainModel >> tempsDeDemarage [

	^ tempsDeDemarage
]

{ #category : 'accessing' }
PNTrainModel >> tempsDepart [

	^ tempsDepart
]

{ #category : 'accessing' }
PNTrainModel >> tempsDepart: anObject [

	tempsDepart := anObject
]

{ #category : 'as yet unclassified' }
PNTrainModel >> trainEnPartence: aTime [

	^ self tempsDepart < aTime
]

Class {
	#name : 'PNTrain',
	#superclass : 'Object',
	#instVars : [
		'nom',
		'tempsArrive',
		'tempsDepart',
		'autorisation'
	],
	#category : 'PassageNiveau-user-interface',
	#package : 'PassageNiveau',
	#tag : 'user-interface'
}

{ #category : 'accessing' }
PNTrain >> autorisation [

	^ autorisation
]

{ #category : 'accessing' }
PNTrain >> autorisation: anObject [

	self exa: PNRequirements capellaFunction5.
	autorisation := anObject
]

{ #category : 'as yet unclassified' }
PNTrain >> depart: aSystemRegulation [

	self exa: PNRequirements capellaFunction1.
	aSystemRegulation trainQuitteLaGare: self
]

{ #category : 'as yet unclassified' }
PNTrain >> depart: aSystemRegulation avecDelais: aTime [

	self autorisation ifFalse: [ ^ self ].
	self exa: PNRequirements capellaFunction4.
	(self tempsDepart addSeconds: 5) < aTime ifTrue: [
		self depart: aSystemRegulation ]
]

{ #category : 'initialization' }
PNTrain >> initialize [

	super initialize.
	autorisation := false
]

{ #category : 'accessing' }
PNTrain >> nom [

	^ nom
]

{ #category : 'accessing' }
PNTrain >> nom: anObject [

	nom := anObject
]

{ #category : 'accessing' }
PNTrain >> tempsArrive [

	^ tempsArrive
]

{ #category : 'accessing' }
PNTrain >> tempsArrive: anObject [

	tempsArrive := anObject
]

{ #category : 'accessing' }
PNTrain >> tempsDepart [

	^ tempsDepart
]

{ #category : 'accessing' }
PNTrain >> tempsDepart: anObject [

	tempsDepart := anObject
]

{ #category : 'as yet unclassified' }
PNTrain >> trainEnPartence: aTime [

	^ self tempsDepart < aTime
]

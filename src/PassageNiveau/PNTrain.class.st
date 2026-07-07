Class {
	#name : 'PNTrain',
	#superclass : 'Object',
	#instVars : [
		'nom',
		'depart',
		'arrive'
	],
	#category : 'PassageNiveau-molecule',
	#package : 'PassageNiveau',
	#tag : 'molecule'
}

{ #category : 'accessing' }
PNTrain >> arrive [

	^ arrive
]

{ #category : 'accessing' }
PNTrain >> arrive: anObject [

	arrive := anObject
]

{ #category : 'accessing' }
PNTrain >> depart [

	^ depart
]

{ #category : 'accessing' }
PNTrain >> depart: anObject [

	depart := anObject
]

{ #category : 'accessing' }
PNTrain >> nom [

	^ nom
]

{ #category : 'accessing' }
PNTrain >> nom: anObject [

	nom := anObject
]

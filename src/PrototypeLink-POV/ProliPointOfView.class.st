Class {
	#name : 'ProliPointOfView',
	#superclass : 'Object',
	#instVars : [
		'pragma',
		'tags'
	],
	#category : 'PrototypeLink-POV',
	#package : 'PrototypeLink-POV'
}

{ #category : 'as yet unclassified' }
ProliPointOfView class >> blocPointOfView [

	^ self new
		  pragma: #Bloc;
		  tags: { #visual . #panel . #ui . #widget };
		  yourself
]

{ #category : 'as yet unclassified' }
ProliPointOfView class >> moleculePointOfView [

	^ self new
		  pragma: #Molecule;
		  tags: { #component . #event . #service };
		  yourself
]

{ #category : 'accessing' }
ProliPointOfView >> pragma [

	^ pragma
]

{ #category : 'accessing' }
ProliPointOfView >> pragma: anObject [

	pragma := anObject
]

{ #category : 'accessing' }
ProliPointOfView >> tags [

	^ tags
]

{ #category : 'accessing' }
ProliPointOfView >> tags: anObject [

	tags := anObject
]

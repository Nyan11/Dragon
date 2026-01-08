Class {
	#name : 'CtPPoolCreationStep',
	#superclass : 'CtPImportStep',
	#instVars : [
		'file',
		'rules',
		'capellaObjects',
		'capellaDocument'
	],
	#category : 'CapellaToPharo',
	#package : 'CapellaToPharo'
}

{ #category : 'building' }
CtPPoolCreationStep >> build [

	self file ifNil: [ ^ self error: 'File must not be nil.' ].
	self rules ifNil: [ ^ self error: 'Rules must not be nil.' ].

	capellaObjects := (self rules flatCollect: [ :rule |
		                   rule capellaObjectsForDocument:
			                   self capellaDocument ]) asOrderedCollection
		                  removeDuplicates
]

{ #category : 'accessing' }
CtPPoolCreationStep >> capellaDocument [

	^ capellaDocument
]

{ #category : 'accessing' }
CtPPoolCreationStep >> capellaObjects [

	^ capellaObjects
]

{ #category : 'accessing' }
CtPPoolCreationStep >> file [

	^ file
]

{ #category : 'accessing' }
CtPPoolCreationStep >> file: anObject [

	file := anObject.
	capellaDocument := XMLDOMParser parse: self file asFileReference contents.
]

{ #category : 'accessing' }
CtPPoolCreationStep >> rules [

	^ rules
]

{ #category : 'accessing' }
CtPPoolCreationStep >> rules: aCollection [

	rules := aCollection asOrderedCollection removeDuplicates 
]

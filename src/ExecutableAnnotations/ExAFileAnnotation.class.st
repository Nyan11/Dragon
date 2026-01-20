Class {
	#name : 'ExAFileAnnotation',
	#superclass : 'ExAAnnotation',
	#instVars : [
		'file'
	],
	#category : 'ExecutableAnnotations',
	#package : 'ExecutableAnnotations'
}

{ #category : 'accessing' }
ExAFileAnnotation >> file [

	^ file
]

{ #category : 'accessing' }
ExAFileAnnotation >> file: anObject [

	file := anObject
]

{ #category : 'testing' }
ExAFileAnnotation >> isEquivalentTo: anAnnotation [

	(super isEquivalentTo: anAnnotation) ifFalse: [ ^ false ].
	^ self file = anAnnotation file
]

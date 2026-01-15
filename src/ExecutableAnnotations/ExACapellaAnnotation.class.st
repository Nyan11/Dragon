Class {
	#name : 'ExACapellaAnnotation',
	#superclass : 'ExAAnnotation',
	#instVars : [
		'file',
		'id',
		'name',
		'description'
	],
	#category : 'ExecutableAnnotations',
	#package : 'ExecutableAnnotations'
}

{ #category : 'accessing' }
ExACapellaAnnotation >> description: aString [

	description := aString
]

{ #category : 'accessing' }
ExACapellaAnnotation >> file [

	^ file
]

{ #category : 'accessing' }
ExACapellaAnnotation >> file: anObject [

	file := anObject
]

{ #category : 'accessing' }
ExACapellaAnnotation >> id [

	^ id
]

{ #category : 'accessing' }
ExACapellaAnnotation >> id: anObject [

	id := anObject
]

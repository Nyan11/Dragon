Class {
	#name : 'ExACapellaAnnotation',
	#superclass : 'ExAFileAnnotation',
	#instVars : [
		'id',
		'name',
		'description'
	],
	#category : 'ExecutableAnnotations',
	#package : 'ExecutableAnnotations'
}

{ #category : 'accessing' }
ExACapellaAnnotation >> description [

	^ description
]

{ #category : 'accessing' }
ExACapellaAnnotation >> description: aString [

	description := aString
]

{ #category : 'accessing' }
ExACapellaAnnotation >> id [

	^ id
]

{ #category : 'accessing' }
ExACapellaAnnotation >> id: anObject [

	id := anObject
]

{ #category : 'accessing' }
ExACapellaAnnotation >> name [

	^ name
]

{ #category : 'accessing' }
ExACapellaAnnotation >> name: anObject [

	name := anObject
]

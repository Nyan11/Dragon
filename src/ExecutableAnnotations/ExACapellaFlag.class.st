Class {
	#name : 'ExACapellaFlag',
	#superclass : 'ExAFlag',
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
ExACapellaFlag >> description: aString [

	description := aString
]

{ #category : 'accessing' }
ExACapellaFlag >> file [

	^ file
]

{ #category : 'accessing' }
ExACapellaFlag >> file: anObject [

	file := anObject
]

{ #category : 'accessing' }
ExACapellaFlag >> id [

	^ id
]

{ #category : 'accessing' }
ExACapellaFlag >> id: anObject [

	id := anObject
]

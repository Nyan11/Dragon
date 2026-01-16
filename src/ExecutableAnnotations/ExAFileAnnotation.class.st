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

Class {
	#name : 'ExAAnnotation',
	#superclass : 'Object',
	#instVars : [
		'linkedAnnotations',
		'privateMethod'
	],
	#category : 'ExecutableAnnotations',
	#package : 'ExecutableAnnotations'
}

{ #category : 'initialization' }
ExAAnnotation >> initialize [

	super initialize.
	linkedAnnotations := {  }
]

{ #category : 'accessing' }
ExAAnnotation >> linkedAnnotations [

	^ linkedAnnotations
]

{ #category : 'accessing' }
ExAAnnotation >> linkedAnnotations: anObject [

	linkedAnnotations := anObject
]

{ #category : 'accessing' }
ExAAnnotation >> privateMethod [

	^ privateMethod
]

{ #category : 'accessing' }
ExAAnnotation >> privateMethod: anObject [

	privateMethod := anObject
]

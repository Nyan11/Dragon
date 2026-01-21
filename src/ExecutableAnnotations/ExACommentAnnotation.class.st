Class {
	#name : 'ExACommentAnnotation',
	#superclass : 'ExAAnnotation',
	#instVars : [
		'comment'
	],
	#category : 'ExecutableAnnotations',
	#package : 'ExecutableAnnotations'
}

{ #category : 'accessing' }
ExACommentAnnotation >> comment [

	^ comment
]

{ #category : 'accessing' }
ExACommentAnnotation >> comment: anObject [

	comment := anObject
]

{ #category : 'testing' }
ExACommentAnnotation >> isEquivalentTo: anAnnotation [

	(super isEquivalentTo: anAnnotation) ifFalse: [ ^ false ].
	^ self comment = anAnnotation comment
]

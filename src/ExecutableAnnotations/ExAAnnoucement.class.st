Class {
	#name : 'ExAAnnoucement',
	#superclass : 'Announcement',
	#instVars : [
		'object',
		'executableAnnotation',
		'method'
	],
	#classInstVars : [
		'uniqueAnnouncer'
	],
	#category : 'ExecutableAnnotations',
	#package : 'ExecutableAnnotations'
}

{ #category : 'accessing' }
ExAAnnoucement class >> uniqueAnnouncer [

	uniqueAnnouncer ifNil: [ uniqueAnnouncer := Announcer new ].
	^ uniqueAnnouncer
]

{ #category : 'accessing' }
ExAAnnoucement >> executableAnnotation [

	^ executableAnnotation
]

{ #category : 'accessing' }
ExAAnnoucement >> executableAnnotation: anObject [

	executableAnnotation := anObject
]

{ #category : 'accessing' }
ExAAnnoucement >> method [

	^ method
]

{ #category : 'accessing' }
ExAAnnoucement >> method: anObject [

	method := anObject
]

{ #category : 'accessing' }
ExAAnnoucement >> object [

	^ object
]

{ #category : 'accessing' }
ExAAnnoucement >> object: anObject [

	object := anObject
]

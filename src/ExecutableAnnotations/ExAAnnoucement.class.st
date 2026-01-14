Class {
	#name : 'ExAAnnoucement',
	#superclass : 'Announcement',
	#instVars : [
		'executableFlag',
		'object'
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
ExAAnnoucement >> executableFlag [

	^ executableFlag
]

{ #category : 'accessing' }
ExAAnnoucement >> executableFlag: anObject [

	executableFlag := anObject
]

{ #category : 'accessing' }
ExAAnnoucement >> object [

	^ object
]

{ #category : 'accessing' }
ExAAnnoucement >> object: anObject [

	object := anObject
]

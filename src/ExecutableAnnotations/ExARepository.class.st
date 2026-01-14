Class {
	#name : 'ExARepository',
	#superclass : 'Object',
	#instVars : [
		'pragmaName',
		'flags'
	],
	#category : 'ExecutableAnnotations',
	#package : 'ExecutableAnnotations'
}

{ #category : 'accessing' }
ExARepository >> flags [

	^ flags
]

{ #category : 'accessing' }
ExARepository >> pragmaName [

	^ pragmaName
]

{ #category : 'accessing' }
ExARepository >> pragmaName: anObject [

	pragmaName := anObject asSymbol.
	flags := Dictionary new.
	(Pragma allNamed: #ExA:)
		select: [ :each |
			each arguments size = 1 and: [
				each arguments first = self pragmaName ] ]
		thenDo: [ :each |
				| method |
				method := each method.
				flags
					at:
					(method valueWithReceiver:
						 thisContext sender sender sender receiver)
					put: method ].
	ExAAnnoucement uniqueAnnouncer when: ExAAnnoucement send: #flagActivated: to: self 
]

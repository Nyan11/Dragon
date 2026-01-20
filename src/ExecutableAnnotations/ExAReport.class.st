Class {
	#name : 'ExAReport',
	#superclass : 'Object',
	#instVars : [
		'annotations',
		'annotationsObjectsDictionary',
		'annotationsGraphicalObjectsDictionary',
		'annotationsSuccessDictionary',
		'annotationsFailureDictionary',
		'highlightedAnnotations'
	],
	#category : 'ExecutableAnnotations',
	#package : 'ExecutableAnnotations'
}

{ #category : 'highlighting' }
ExAReport >> addHighlightFor: anAnnotation [

	self highlightedAnnotations add: anAnnotation.
	self updateHighlightedAnnotations
]

{ #category : 'accessing' }
ExAReport >> annotations [

	^ annotations
]

{ #category : 'accessing' }
ExAReport >> annotations: anObject [

	annotations := anObject.
	annotations do: [ :annotation |
			self annotationsGraphicalObjectsDictionary
				at: annotation
				put: Set new.
			self annotationsObjectsDictionary
				at: annotation
				put: Set new.
			self annotationsSuccessDictionary
				at: annotation
				put: OrderedCollection new.
			self annotationsFailureDictionary
				at: annotation
				put: OrderedCollection new ]
]

{ #category : 'as yet unclassified' }
ExAReport >> annotationsFailureDictionary [

	^ annotationsFailureDictionary
]

{ #category : 'as yet unclassified' }
ExAReport >> annotationsGraphicalObjectsDictionary [

	^ annotationsGraphicalObjectsDictionary
]

{ #category : 'as yet unclassified' }
ExAReport >> annotationsObjectsDictionary [

	^ annotationsObjectsDictionary
]

{ #category : 'as yet unclassified' }
ExAReport >> annotationsSuccessDictionary [

	^ annotationsSuccessDictionary
]

{ #category : 'accessing' }
ExAReport >> annoucementExecuted: anExAAnnouncement [

	| selectedAnnotation |
	selectedAnnotation := self selectAnnotation:
		                      anExAAnnouncement executableAnnotation.
	self
		validateAnnotation: selectedAnnotation
		withEvent: anExAAnnouncement
]

{ #category : 'highlighting' }
ExAReport >> highlightedAnnotations [

	^ highlightedAnnotations
]

{ #category : 'initialization' }
ExAReport >> initialize [

	super initialize.
	highlightedAnnotations := Set new.
	annotationsObjectsDictionary := Dictionary new.
	annotationsObjectsDictionary := Dictionary new.
	annotationsGraphicalObjectsDictionary := Dictionary new.
	annotationsSuccessDictionary := Dictionary new.
	annotationsFailureDictionary := Dictionary new
]

{ #category : 'as yet unclassified' }
ExAReport >> isAnnotationAlreadyValid: anAnnotation [

	^ (self annotationsSuccessDictionary at: anAnnotation) isNotEmpty
]

{ #category : 'highlighting' }
ExAReport >> isAnnotationHighlighted: anAnnotation [

	^ self highlightedAnnotations includes: anAnnotation
]

{ #category : 'as yet unclassified' }
ExAReport >> isAnnotationValid: anAnnotation withEvent: anExAAnnouncement [

	| linkedAnnotations |
	linkedAnnotations := anAnnotation linkedAnnotations collect: [ :annotation | self selectAnnotation: annotation ].
	^ linkedAnnotations allSatisfy: [ :each | self isAnnotationAlreadyValid: each ]
]

{ #category : 'highlighting' }
ExAReport >> removeHighlightFor: anAnnotation [

	self highlightedAnnotations remove: anAnnotation ifAbsent: [ ].
	self updateHighlightedAnnotations
]

{ #category : 'accessing' }
ExAReport >> selectAnnotation: anAnnotation [

	| selectedAnnotations |
	selectedAnnotations := self annotations select: [ :annotation |
		                       annotation isEquivalentTo:
			                       anAnnotation ].
	selectedAnnotations ifEmpty: [ ^ self error: 'no annotation found' ].
	^ selectedAnnotations first
]

{ #category : 'as yet unclassified' }
ExAReport >> startReporting [

	ExAAnnoucement uniqueAnnouncer weak
		when: ExAAnnoucement
		send: #annoucementExecuted:
		to: self
]

{ #category : 'highlighting' }
ExAReport >> updateHighlightedAnnotations [

	self annotationsGraphicalObjectsDictionary keysAndValuesDo: [
			:annotation
			:graphicalObjects |
			| addHighlight |
			addHighlight := self highlightedAnnotations includes: annotation.
			graphicalObjects do: [ :each |
					addHighlight
						ifTrue: [ each exaHighlightFor: annotation ]
						ifFalse: [ each exaRemoveHighlightFor: annotation ] ] ]
]

{ #category : 'as yet unclassified' }
ExAReport >> validateAnnotation: anAnnotation withEvent: anExAAnnouncement [

	| validationResult |
	(self annotationsObjectsDictionary at: anAnnotation) add:
		anExAAnnouncement object.
	anExAAnnouncement object exaIsGraphicObject ifTrue: [
			(self annotationsGraphicalObjectsDictionary at: anAnnotation) add:
				anExAAnnouncement object ].
	(self isAnnotationAlreadyValid: anAnnotation) ifTrue: [ ^ self ].
	validationResult := self
		                    isAnnotationValid: anAnnotation
		                    withEvent: anExAAnnouncement.
	validationResult
		ifTrue: [
				(self annotationsSuccessDictionary at: anAnnotation) add:
					anExAAnnouncement ]
		ifFalse: [
				(self annotationsFailureDictionary at: anAnnotation) add:
					anExAAnnouncement ]
]

Class {
	#name : 'ExAReport',
	#superclass : 'Object',
	#instVars : [
		'annotations',
		'annotationsObjectsDictionary',
		'annotationsGraphicalObjectsDictionary',
		'annotationsSuccessDictionary',
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
				put: OrderedCollection new ]
]

{ #category : 'accessing' }
ExAReport >> annotationsGraphicalObjectsDictionary [

	^ annotationsGraphicalObjectsDictionary
]

{ #category : 'accessing' }
ExAReport >> annotationsObjectsDictionary [

	^ annotationsObjectsDictionary
]

{ #category : 'accessing' }
ExAReport >> annotationsSuccessDictionary [

	^ annotationsSuccessDictionary
]

{ #category : 'validation' }
ExAReport >> annoucementExecuted: anExAAnnouncement [

	| annotation |
	annotation := self selectAnnotation:
		              anExAAnnouncement executableAnnotation.
	annotation ifNil: [ ^ self ].
	(self annotationsObjectsDictionary at: annotation) add:
		anExAAnnouncement object.
	anExAAnnouncement object exaIsGraphicObject ifTrue: [
			(self annotationsGraphicalObjectsDictionary at: annotation) add:
				anExAAnnouncement object ].
	self validateAnnotationswithEvent: anExAAnnouncement
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
]

{ #category : 'as yet unclassified' }
ExAReport >> inspectionAnnotationsObjectsGraph: aBuilder [

	<inspectorPresentationOrder: 1000 title: 'Annotations-Objects Graph'>
	| canvas annotationShapes objectShapes layout associations |
	annotationShapes := self annotations collect: [ :each |
			                    | shape |
			                    shape := RSBox model: each.
			                    shape @ RSPopup.
			                    shape draggable.
			                    shape color: Color cyan.
			                    shape ].
	objectShapes := self annotationsObjectsDictionary values
		                flatCollect: [ :col |
				                col collect: [ :each |
						                | shape |
						                shape := each exaIsGraphicObject
							                         ifTrue: [ RSCircle new ]
							                         ifFalse: [ RSBox new ].
						                shape model: each.
						                shape @ RSPopup.
						                shape draggable.
						                shape color: Color gray.
						                shape ] ].

	canvas := RSCanvas new.
	canvas addAll: annotationShapes.
	canvas addAll: objectShapes.
	canvas @ RSCanvasController.
	canvas shapes @ RSHighlightable red.

	associations := self annotationsObjectsDictionary associations
		                flatCollect: [ :asso |
		                asso value collect: [ :obj | asso key -> obj ] ].

	"RSLineBuilder line
		color: Color cyan;
		canvas: canvas;
		shapes: annotationShapes;
		connectFromAll: [ :each | each linkedAnnotations collect: [ :la | self selectAnnotation: la ] ] ."

	RSLineBuilder line
		color: Color black;
		canvas: canvas;
		fromShapes: annotationShapes;
		toShapes: objectShapes;
		useAssociations: associations.

	layout := RSForceBasedLayout new
		          nodes: annotationShapes , objectShapes;
		          edges: canvas lines;
		          start;
		          yourself.
	canvas newAnimation repeat onStepDo: [ :t | layout step ].

	^ (aBuilder instantiate: SpRoassalInspectorPresenter)
		  canvas: canvas;
		  yourself
]

{ #category : 'validation' }
ExAReport >> isAnnotationAlreadyValid: anAnnotation [

	^ (self annotationsSuccessDictionary at: anAnnotation) isNotEmpty
]

{ #category : 'highlighting' }
ExAReport >> isAnnotationHighlighted: anAnnotation [

	^ self highlightedAnnotations includes: anAnnotation
]

{ #category : 'highlighting' }
ExAReport >> removeHighlightFor: anAnnotation [

	self highlightedAnnotations remove: anAnnotation ifAbsent: [ ].
	self updateHighlightedAnnotations
]

{ #category : 'validation' }
ExAReport >> selectAnnotation: anAnnotation [

	| selectedAnnotations |
	selectedAnnotations := self annotations select: [ :annotation |
		                       annotation isEquivalentTo:
			                       anAnnotation ].
	selectedAnnotations ifEmpty: [ ^ nil ].
	^ selectedAnnotations first
]

{ #category : 'validation' }
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

{ #category : 'validation' }
ExAReport >> validateAnnotation: anAnnotation withEvent: anExAAnnouncement [

	| linkedAnnotations validationOfLinkedAnnotations result |
	(self isAnnotationAlreadyValid: anAnnotation) ifTrue: [ ^ true ].
	linkedAnnotations := anAnnotation linkedAnnotations collect: [
		                     :annotation |
		                     self selectAnnotation: annotation ].
	validationOfLinkedAnnotations := linkedAnnotations allSatisfy: [
		                                 :each |
		                                 self isAnnotationAlreadyValid: each ].
	validationOfLinkedAnnotations ifFalse: [ ^ false ].
	result := anAnnotation validationBlock valueWithEnoughArguments: {
			          anExAAnnouncement.
			          self.
			          linkedAnnotations }.
	result ifFalse: [ ^ false ].
	(self annotationsSuccessDictionary at: anAnnotation) add:
		anExAAnnouncement.
	self validateAnnotationswithEvent: anExAAnnouncement
]

{ #category : 'validation' }
ExAReport >> validateAnnotationswithEvent: anExAAnnouncement [

	self annotations do: [ :each |
		self validateAnnotation: each withEvent: anExAAnnouncement ]
]

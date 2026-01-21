Extension { #name : 'BlElement' }

{ #category : '*ExecutableAnnotations' }
BlElement >> exaHighlightFor: anExAAnnotation [

	self userData
		at: #executableAnnotations
		ifPresent: [ :col | col add: anExAAnnotation ]
		ifAbsentPut: [ Set with: anExAAnnotation ].
	self exaUpadteHighlight
]

{ #category : '*ExecutableAnnotations' }
BlElement >> exaIsGraphicObject [

	^ true
]

{ #category : '*ExecutableAnnotations' }
BlElement >> exaNewOverlayElement [

	| overlay |
	overlay := (BlOverlayElement on: self)
		           outskirts: BlOutskirts outside;
		           geometry: BlRectangleGeometry new;
		           background: (Color cyan alpha: 0.5);
		           border: (BlBorder builder
				            paint: Color cyan;
				            width: 2;
				            build);
		           yourself.

	overlay addEventHandler: (BlEventHandler
			 on: BlClickEvent
			 do: [
					 self userData
						 at: #executableAnnotations
						 ifPresent: [ :obj | obj inspect ] ]).

	^ overlay
]

{ #category : '*ExecutableAnnotations' }
BlElement >> exaRemoveHighlightFor: anExAAnnotation [

	self userData
		at: #executableAnnotations
		ifPresent: [ :col | col remove: anExAAnnotation ifAbsent: [  ] ].
	self exaUpadteHighlight.
]

{ #category : '*ExecutableAnnotations' }
BlElement >> exaUpadteHighlight [

	| overlay annotations |
	self isAttachedToSceneGraph ifFalse: [ ^ self ].
	annotations := self userData
		               at: #executableAnnotations
		               ifAbsent: [ {  } ].
	overlay := self userData
		           at: #executableAnnotationsOverlay
		           ifAbsentPut: [ self exaNewOverlayElement ].
	annotations ifEmpty: [
			overlay hasParent ifFalse: [ ^ self ].
			self space root removeChild: overlay.
			^ self ].
	overlay hasParent ifTrue: [ ^ self ].
	self space root addChild: overlay as: #executableAnnotationsOverlay
]

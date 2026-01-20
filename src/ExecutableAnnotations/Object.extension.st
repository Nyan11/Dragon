Extension { #name : 'Object' }

{ #category : '*ExecutableAnnotations' }
Object >> exa: anExAAnnotation [
	
	ExAAnnoucement uniqueAnnouncer announce: (ExAAnnoucement new
			 executableAnnotation: anExAAnnotation;
			 method: thisContext sender method;
			 object: self;
			 yourself)
]

{ #category : '*ExecutableAnnotations' }
Object >> exaIsGraphicObject [

	^ false
]

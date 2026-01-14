Class {
	#name : 'OtCConstructor',
	#superclass : 'OtCAbstractObject',
	#category : 'ObjectsToCode-Description',
	#package : 'ObjectsToCode',
	#tag : 'Description'
}

{ #category : 'testing' }
OtCConstructor class >> isAbstract [

	^ self class == OtCConstructor
]

{ #category : 'testing' }
OtCConstructor >> hasReferences [

	^ false
]

{ #category : 'as yet unclassified' }
OtCConstructor >> otcVisit: anOtCVisitor [

	anOtCVisitor visitConstructor: self
]

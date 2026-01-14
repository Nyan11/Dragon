Class {
	#name : 'OtCReferenceVisitor',
	#superclass : 'Object',
	#category : 'ObjectsToCode-Serialization',
	#package : 'ObjectsToCode',
	#tag : 'Serialization'
}

{ #category : 'visiting' }
OtCReferenceVisitor >> visitAttribute: aDragonSingleAttribute [

	self explicitRequirement
]

{ #category : 'visiting' }
OtCReferenceVisitor >> visitConstructor: aDragonBasicConstructor [

	self explicitRequirement
]

{ #category : 'visiting' }
OtCReferenceVisitor >> visitReference: aReference [

	self explicitRequirement
]

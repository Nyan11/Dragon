Class {
	#name : 'DragonReferenceVisitor',
	#superclass : 'Object',
	#category : 'Dragon-Serialization',
	#package : 'Dragon',
	#tag : 'Serialization'
}

{ #category : 'visiting' }
DragonReferenceVisitor >> visitAttribute: aDragonSingleAttribute [

	self explicitRequirement
]

{ #category : 'visiting' }
DragonReferenceVisitor >> visitConstructor: aDragonBasicConstructor [

	self explicitRequirement
]

{ #category : 'visiting' }
DragonReferenceVisitor >> visitReference: aReference [

	self explicitRequirement
]

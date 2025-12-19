Class {
	#name : 'DragonSerializationReferenceVisitor',
	#superclass : 'DragonReferenceVisitor',
	#instVars : [
		'nameReferenceDictionary',
		'scriptStream',
		'executedDictionary'
	],
	#category : 'Dragon',
	#package : 'Dragon'
}

{ #category : 'accessing' }
DragonSerializationReferenceVisitor >> executedDictionary [

	^ executedDictionary
]

{ #category : 'initialization' }
DragonSerializationReferenceVisitor >> initialize [

	super initialize.
	executedDictionary := Dictionary new.
	scriptStream := WriteStream on: String new
]

{ #category : 'accessing' }
DragonSerializationReferenceVisitor >> nameReferenceDictionary [

	^ nameReferenceDictionary
]

{ #category : 'accessing' }
DragonSerializationReferenceVisitor >> nameReferenceDictionary: anObject [

	nameReferenceDictionary := anObject
]

{ #category : 'as yet unclassified' }
DragonSerializationReferenceVisitor >> referenceHasBeenExecuted: aReference [

	self executedDictionary at: aReference ifPresent: [ ^ true ] ifAbsent: [ ^ false ]
]

{ #category : 'initialization' }
DragonSerializationReferenceVisitor >> scriptStream [

	^ scriptStream
]

{ #category : 'visiting' }
DragonSerializationReferenceVisitor >> visitAttribute: aDragonSingleAttribute [ 
	self scriptStream << aDragonSingleAttribute setter.
]

{ #category : 'visiting' }
DragonSerializationReferenceVisitor >> visitConstructor: aDragonBasicConstructor [

	self scriptStream << aDragonBasicConstructor constructorString
]

{ #category : 'visiting' }
DragonSerializationReferenceVisitor >> visitReference: aReference [

	| nameOrConstructor |
	self scriptStream << '('.
	nameOrConstructor := self nameReferenceDictionary
		                     at: aReference
		                     ifPresent: [ :name | self scriptStream << name ]
		                     ifAbsent: [
		                     aReference constructor dragonVisit: self ].
	self scriptStream << ')'.
	aReference nextReferencesWithAttribute ifEmpty: [ ^ self ].
	(self referenceHasBeenExecuted: aReference) ifTrue: [ ^ self ].
	self executedDictionary at: aReference put: true.
	aReference nextReferencesWithAttribute keysAndValuesDo: [
			:reference
			:attribute |
			attribute dragonVisit: self.
			reference dragonVisit: self.
			self scriptStream << ';' ].
	self scriptStream << 'yourself'
]

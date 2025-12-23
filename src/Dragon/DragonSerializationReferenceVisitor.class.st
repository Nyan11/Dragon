Class {
	#name : 'DragonSerializationReferenceVisitor',
	#superclass : 'DragonReferenceVisitor',
	#instVars : [
		'nameReferenceDictionary',
		'scriptStream',
		'executedDictionary'
	],
	#category : 'Dragon-Serialization',
	#package : 'Dragon',
	#tag : 'Serialization'
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

{ #category : 'visiting' }
DragonSerializationReferenceVisitor >> makeAttribute: attribute andReference: reference [

	attribute isComplexSetter ifFalse: [
			attribute dragonVisit: self.
			reference dragonVisit: self.
			^ self ].

	self scriptStream << (attribute setter value: (self extractArgumentsStringOf: reference))

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
	aDragonSingleAttribute setter.
	self scriptStream << aDragonSingleAttribute setter.
]

{ #category : 'visiting' }
DragonSerializationReferenceVisitor >> visitConstructor: aDragonConstructor [

	aDragonConstructor hasReferences ifFalse: [ ^ self scriptStream << aDragonConstructor constructorString ].
	
	self scriptStream << aDragonConstructor beginConstructorString.
	aDragonConstructor references do: [ :each | self visitReference: each ] separatedBy: [ self scriptStream << aDragonConstructor separatorConstructorString ].
	self scriptStream << aDragonConstructor endConstructorString.
	
	
	
]

{ #category : 'visiting' }
DragonSerializationReferenceVisitor >> visitReference: aReference [

	| alreadyCreated nameOrConstructor |
	alreadyCreated := self referenceHasBeenExecuted: aReference.
	alreadyCreated ifFalse: [ self scriptStream << '(' ].

	self scriptStream << '('.
	nameOrConstructor := self nameReferenceDictionary
		                     at: aReference
		                     ifPresent: [ :name | self scriptStream << name ]
		                     ifAbsent: [
		                     aReference constructor dragonVisit: self ].
	self scriptStream << ')'.
	alreadyCreated ifTrue: [ ^ self ].

	aReference nextReferencesWithAttribute ifEmpty: [
			self scriptStream << ')'.
			^ self ].

	self executedDictionary at: aReference put: true.
	aReference nextReferencesWithAttribute keysAndValuesDo: [
			:reference
			:attribute |
			self makeAttribute: attribute andReference: reference.
			self scriptStream << ';' ].
	self scriptStream << 'yourself)'
]

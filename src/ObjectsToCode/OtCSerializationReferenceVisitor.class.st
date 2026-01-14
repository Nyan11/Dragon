Class {
	#name : 'OtCSerializationReferenceVisitor',
	#superclass : 'OtCReferenceVisitor',
	#instVars : [
		'nameReferenceDictionary',
		'scriptStream',
		'executedDictionary',
		'alreadySetAttribute'
	],
	#category : 'ObjectsToCode-Serialization',
	#package : 'ObjectsToCode',
	#tag : 'Serialization'
}

{ #category : 'accessing' }
OtCSerializationReferenceVisitor >> alreadySetAttribute [

	^ alreadySetAttribute
]

{ #category : 'accessing' }
OtCSerializationReferenceVisitor >> executedDictionary [

	^ executedDictionary
]

{ #category : 'as yet unclassified' }
OtCSerializationReferenceVisitor >> extractArgumentsStringOf: aDragonReference [

	| previsousWriteStream returnValues |
	previsousWriteStream := self scriptStream.
	returnValues := aDragonReference nextReferenceArguments collect: [ :each |
			| stream |
			stream := self newWriteStream.
			self scriptStream: stream.
			each otcVisit: self.
			stream contents ].
	self scriptStream: previsousWriteStream.
	^ returnValues
]

{ #category : 'initialization' }
OtCSerializationReferenceVisitor >> initialize [

	super initialize.
	executedDictionary := Dictionary new.
	scriptStream := self newWriteStream.
	alreadySetAttribute := Dictionary new
]

{ #category : 'visiting' }
OtCSerializationReferenceVisitor >> makeAttribute: attribute andReference: reference [

	| arguments keyWords |
	self alreadySetAttribute
		at: reference
		ifPresent: [ :col | col add: attribute ]
		ifAbsentPut: [ OrderedCollection with: attribute ].

	attribute isComplexSetter ifFalse: [
			attribute otcVisit: self.
			reference otcVisit: self.
			^ self ].

	arguments := self extractArgumentsStringOf: reference.
	keyWords := attribute setter separateKeywords splitOn: '  '.

	keyWords withIndexDo: [ :word :index |
			self scriptStream << word.
			self scriptStream << '('.
			self scriptStream << (arguments at: index).
			self scriptStream << ')' ]
]

{ #category : 'accessing' }
OtCSerializationReferenceVisitor >> nameReferenceDictionary: anObject [

	nameReferenceDictionary := anObject
]

{ #category : 'initialization' }
OtCSerializationReferenceVisitor >> newWriteStream [

	^ WriteStream on: String new
]

{ #category : 'as yet unclassified' }
OtCSerializationReferenceVisitor >> referenceHasBeenExecuted: aReference [

	self executedDictionary at: aReference ifPresent: [ ^ true ] ifAbsent: [ ^ false ]
]

{ #category : 'accessing' }
OtCSerializationReferenceVisitor >> referencesAndNamesDictionary [

	^ nameReferenceDictionary
]

{ #category : 'initialization' }
OtCSerializationReferenceVisitor >> scriptStream [

	^ scriptStream
]

{ #category : 'initialization' }
OtCSerializationReferenceVisitor >> scriptStream: anObject [

	scriptStream := anObject
]

{ #category : 'visiting' }
OtCSerializationReferenceVisitor >> shouldAddAttribute: anAttribute [

	^ (self attributes includes: anAttribute) not
]

{ #category : 'visiting' }
OtCSerializationReferenceVisitor >> shouldAddAttribute: anAttribute andReference: aReference [

	self alreadySetAttribute
		at: aReference
		ifPresent: [ :col | ^ (col includes: anAttribute) not ]
		ifAbsent: [ ^ true ]
]

{ #category : 'visiting' }
OtCSerializationReferenceVisitor >> visitAttribute: aDragonSingleAttribute [

	self scriptStream << aDragonSingleAttribute setter
]

{ #category : 'visiting' }
OtCSerializationReferenceVisitor >> visitConstructor: aDragonConstructor [

	aDragonConstructor hasReferences ifFalse: [ ^ self scriptStream << aDragonConstructor constructorString ].
	
	self scriptStream << aDragonConstructor beginConstructorString.
	aDragonConstructor references do: [ :each | self visitReference: each ] separatedBy: [ self scriptStream << aDragonConstructor separatorConstructorString ].
	self scriptStream << aDragonConstructor endConstructorString.
	
	
	
]

{ #category : 'visiting' }
OtCSerializationReferenceVisitor >> visitReference: aReference [

	| alreadyCreated nameOrConstructor shouldAddYourself |
	alreadyCreated := self referenceHasBeenExecuted: aReference.
	alreadyCreated ifFalse: [ self scriptStream << '(' ].

	self scriptStream << '('.
	nameOrConstructor := self referencesAndNamesDictionary
		                     at: aReference
		                     ifPresent: [ :name | self scriptStream << name ]
		                     ifAbsent: [
		                     aReference constructor otcVisit: self ].
	self scriptStream << ')'.
	alreadyCreated ifTrue: [ ^ self ].

	shouldAddYourself := false.
	aReference internalStates do: [ :internalState |
			self scriptStream << internalState setterForState.
			self scriptStream << ';'.
			shouldAddYourself := true ].
	self executedDictionary at: aReference put: true.
	aReference nextReferencesWithAttribute keysAndValuesDo: [
			:reference
			:attribute |
			(self shouldAddAttribute: attribute andReference: reference)
				ifTrue: [
						self makeAttribute: attribute andReference: reference.
						self scriptStream << ';'.
						shouldAddYourself := true ] ].
	shouldAddYourself
		ifFalse: [ self scriptStream << ')' ]
		ifTrue: [ self scriptStream << 'yourself)' ]
]

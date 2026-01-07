Class {
	#name : 'DragonSerializationReferenceVisitor',
	#superclass : 'DragonReferenceVisitor',
	#instVars : [
		'nameReferenceDictionary',
		'scriptStream',
		'executedDictionary',
		'alreadySetAttribute'
	],
	#category : 'Dragon-Serialization',
	#package : 'Dragon',
	#tag : 'Serialization'
}

{ #category : 'accessing' }
DragonSerializationReferenceVisitor >> alreadySetAttribute [

	^ alreadySetAttribute
]

{ #category : 'accessing' }
DragonSerializationReferenceVisitor >> executedDictionary [

	^ executedDictionary
]

{ #category : 'as yet unclassified' }
DragonSerializationReferenceVisitor >> extractArgumentsStringOf: aDragonReference [

	| previsousWriteStream returnValues |
	previsousWriteStream := self scriptStream.
	returnValues := aDragonReference nextReferenceArguments collect: [ :each |
			| stream |
			stream := self newWriteStream.
			self scriptStream: stream.
			each dragonVisit: self.
			stream contents ].
	self scriptStream: previsousWriteStream.
	^ returnValues
]

{ #category : 'initialization' }
DragonSerializationReferenceVisitor >> initialize [

	super initialize.
	executedDictionary := Dictionary new.
	scriptStream := self newWriteStream.
	alreadySetAttribute := Dictionary new
]

{ #category : 'visiting' }
DragonSerializationReferenceVisitor >> makeAttribute: attribute andReference: reference [

	| arguments keyWords |
	self alreadySetAttribute
		at: reference
		ifPresent: [ :col | col add: attribute ]
		ifAbsentPut: [ OrderedCollection with: attribute ].

	attribute isComplexSetter ifFalse: [
			attribute dragonVisit: self.
			reference dragonVisit: self.
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
DragonSerializationReferenceVisitor >> nameReferenceDictionary: anObject [

	nameReferenceDictionary := anObject
]

{ #category : 'initialization' }
DragonSerializationReferenceVisitor >> newWriteStream [

	^ WriteStream on: String new
]

{ #category : 'as yet unclassified' }
DragonSerializationReferenceVisitor >> referenceHasBeenExecuted: aReference [

	self executedDictionary at: aReference ifPresent: [ ^ true ] ifAbsent: [ ^ false ]
]

{ #category : 'accessing' }
DragonSerializationReferenceVisitor >> referencesAndNamesDictionary [

	^ nameReferenceDictionary
]

{ #category : 'initialization' }
DragonSerializationReferenceVisitor >> scriptStream [

	^ scriptStream
]

{ #category : 'initialization' }
DragonSerializationReferenceVisitor >> scriptStream: anObject [

	scriptStream := anObject
]

{ #category : 'visiting' }
DragonSerializationReferenceVisitor >> shouldAddAttribute: anAttribute [

	^ (self attributes includes: anAttribute) not
]

{ #category : 'visiting' }
DragonSerializationReferenceVisitor >> shouldAddAttribute: anAttribute andReference: aReference [

	self alreadySetAttribute
		at: aReference
		ifPresent: [ :col | ^ (col includes: anAttribute) not ]
		ifAbsent: [ ^ true ]
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

	| alreadyCreated nameOrConstructor shouldAddYourself |
	alreadyCreated := self referenceHasBeenExecuted: aReference.
	alreadyCreated ifFalse: [ self scriptStream << '(' ].

	self scriptStream << '('.
	nameOrConstructor := self referencesAndNamesDictionary
		                     at: aReference
		                     ifPresent: [ :name | self scriptStream << name ]
		                     ifAbsent: [
		                     aReference constructor dragonVisit: self ].
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

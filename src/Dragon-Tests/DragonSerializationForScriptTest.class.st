Class {
	#name : 'DragonSerializationForScriptTest',
	#superclass : 'TestCase',
	#category : 'Dragon-Tests',
	#package : 'Dragon-Tests'
}

{ #category : 'testing' }
DragonSerializationForScriptTest class >> isAbstract [

	^ self == DragonSerializationForScriptTest
]

{ #category : 'tests' }
DragonSerializationForScriptTest >> assertScriptSelector: aSelector [

	| serializer scriptString objectToSerialize serializedScriptString |
	serializer := DragonSerialization new.
	scriptString := self perform: aSelector.
	objectToSerialize := OpalCompiler new
		                     source: scriptString;
		                     evaluate.
	serializedScriptString := serializer serializeForScript:
		                          objectToSerialize.

	self assert: serializedScriptString equals: scriptString.
	^ {
		aSelector.
		serializedScriptString.
		scriptString }
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptTest >> inspectTests [

	<script: 'DragonSerializationForScriptTest new inspectTests'>
	(DragonSerializationForScriptTest subclasses collect: [ :each |
			 each isAbstract ifFalse: [
					 each -> (each new testScriptMethods sorted: [ :a :b |
						 a first < b first ]) ] ]) inspect
]

{ #category : 'tests' }
DragonSerializationForScriptTest >> testScriptMethods [

	| methods |
	methods := self class methods select: [ :method |
		           method selector beginsWith: 'script' ].
	self assert: methods isNotEmpty.

	^ methods shuffle collect: [ :method |
		  self assertScriptSelector: method selector ]
]

Class {
	#name : 'OtCSerializationForScriptTest',
	#superclass : 'TestCase',
	#category : 'ObjectsToCode-Tests',
	#package : 'ObjectsToCode-Tests'
}

{ #category : 'testing' }
OtCSerializationForScriptTest class >> isAbstract [

	^ self == OtCSerializationForScriptTest
]

{ #category : 'tests' }
OtCSerializationForScriptTest >> assertScriptSelector: aSelector [

	| serializer scriptString objectToSerialize serializedScriptString |
	serializer := OtCSerialization new.
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
OtCSerializationForScriptTest >> inspectTests [

	<script: 'OtCSerializationForScriptTest new inspectTests'>
	(OtCSerializationForScriptTest subclasses collect: [ :each |
			 each isAbstract ifFalse: [
					 each
					 ->
					 (each new testScriptMethods sorted: [ :a :b | a first < b first ]) ] ])
		inspect
]

{ #category : 'tests' }
OtCSerializationForScriptTest >> testScriptMethods [

	| methods |
	methods := self class methods select: [ :method |
		           method selector beginsWith: 'script' ].
	self assert: methods isNotEmpty.

	^ methods shuffle collect: [ :method |
		  self assertScriptSelector: method selector ]
]

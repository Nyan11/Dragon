Class {
	#name : 'DragonSerializationTest',
	#superclass : 'TestCase',
	#category : 'Dragon-Tests',
	#package : 'Dragon-Tests'
}

{ #category : 'tests' }
DragonSerializationTest >> objectToTest1 [

	^ (DragonTestObject new
		   name: 'test';
		   yourself) -> 'DragonTestObject new
   name: ''test'';
   yourself'
]

{ #category : 'tests' }
DragonSerializationTest >> objectToTest2 [

	| cycling |
	cycling := DragonTestObject new.
	cycling name: cycling.

	^ cycling -> '| dragonTestObject |
dragonTestObject := DragonTestObject new.
dragonTestObject
   name: dragonTestObject;
   yourself'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptLiteral1 [

	| serializer |
	serializer := DragonSerialization new.
	self
		assert: (serializer serializeForScript: 'hello world')
		equals: '''hello world'''
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptLiteral10 [

	| serializer |
	serializer := DragonSerialization new.
	self
		assert:
		(serializer serializeForScript: { $a. 12. 0.9. 'hello'. #world . Object new })
		equals: '{$a . 
12 . 
0.9 . 
''hello'' . 
#world . 
Object new}'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptLiteral11 [

	| serializer array |
	serializer := DragonSerialization new.
	array := {
					 $a.
					 12.
					 0.9.
					 'hello'.
					 #world.
					 Object new }.
	array at: 1 put: array.
	
	self
		assert: (serializer serializeForScript: array)
		equals: '{$a . 
12 . 
0.9 . 
''hello'' . 
#world . 
Object new}'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptLiteral2 [

	| serializer |
	serializer := DragonSerialization new.
	self
		assert: (serializer serializeForScript: #hello)
		equals: '#hello'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptLiteral3 [

	| serializer |
	serializer := DragonSerialization new.
	self assert: (serializer serializeForScript: $a) equals: '$a'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptLiteral4 [

	| serializer |
	serializer := DragonSerialization new.
	self
		assert: (serializer serializeForScript: { })
		equals: '#()'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptLiteral5 [

	| serializer |
	serializer := DragonSerialization new.
	self
		assert: (serializer serializeForScript: 5)
		equals: '5'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptLiteral6 [

	| serializer |
	serializer := DragonSerialization new.
	self
		assert: (serializer serializeForScript:-12)
		equals: '-12'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptLiteral7 [

	| serializer |
	serializer := DragonSerialization new.
	self
		assert: (serializer serializeForScript: 0.9)
		equals: '0.9'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptLiteral8 [

	| serializer |
	serializer := DragonSerialization new.
	self
		assert: (serializer serializeForScript: Float infinity)
		equals: 'Float infinity'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptLiteral9 [

	| serializer |
	serializer := DragonSerialization new.
	self
		assert: (serializer serializeForScript: { $a . 12 . 0.9 . 'hello' . #world })
		equals: '{$a . 
12 . 
0.9 . 
''hello'' . 
#world}'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptObject1 [

	| serializer |
	serializer := DragonSerialization new.
	self
		assert: (serializer serializeForScript: self objectToTest1 key)
		equals: self objectToTest1 value
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptObject2 [

	| serializer |
	serializer := DragonSerialization new.
	self
		assert: (serializer serializeForScript: self objectToTest2 key)
		equals: self objectToTest2 value
]

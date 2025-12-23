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
DragonSerializationTest >> objectToTest3 [

	^ (DragonTestObject new
		   name: (DragonTestObject new
				    name: (DragonTestObject new
						     name: #test;
						     yourself);
				    yourself);
		   yourself) -> 'DragonTestObject new
   name: (DragonTestObject new
         name: (DragonTestObject new
               name: #test;
               yourself);
         yourself);
   yourself'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptCollection1 [

	| serializer |
	serializer := DragonSerialization new.
	self
		assert: (serializer serializeForScript: {
					 $a.
					 12.
					 0.9.
					 'hello'.
					 #world.
					 Object new })
		equals: '{$a . 
12 . 
0.9 . 
''hello'' . 
#world . 
Object new}'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptCollection2 [

	| serializer collection |
	serializer := DragonSerialization new.
	collection := OrderedCollection new.

	self
		assert: (serializer serializeForScript: collection)
		equals: 'OrderedCollection new'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptCollection3 [

	| serializer collection |
	serializer := DragonSerialization new.
	collection := OrderedCollection new.
	collection add: 5.
	collection add: 7.
	collection add: 9.
	collection add: 11.
	collection add: 13.
	

	self
		assert: (serializer serializeForScript: collection)
		equals: 'OrderedCollection new
   add: 5;
   add: 7;
   add: 9;
   add: 11;
   add: 13;
   yourself'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptCollection3b [

	| serializer collection |
	self skip.
	serializer := DragonSerialization new.
	collection := OrderedCollection new.
	collection add: 5.
	collection add: 7.
	collection add: 9.
	collection add: collection.
	collection add: 11.
	collection add: 13.


	self
		assert: (serializer serializeForScript: collection)
		equals: 'OrderedCollection new
   add: 5;
   add: 7;
   add: 9;
   add: 11;
   add: 13;
   yourself'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptCollection4 [

	| serializer collection |
	serializer := DragonSerialization new.
	collection := Bag new.
	collection add: 1.
	collection add: 1.
	collection add: 1.
	collection add: 1.
	collection add: 1.


	self
		assert: (serializer serializeForScript: collection)
		equals: 'Set new
   add: 5;
   add: 7;
   add: 9;
   add: 11;
   add: 13;
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

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptObject3 [

	| serializer |
	serializer := DragonSerialization new.
	self
		assert: (serializer serializeForScript: self objectToTest3 key)
		equals: self objectToTest3 value
]

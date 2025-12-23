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
DragonSerializationTest >> objectToTest4 [

	| obj1 obj2 |
	obj1 := DragonTestObject new
		        name: #test;
		        yourself.
	obj2 := DragonTestObject new
		        name: obj1;
		        yourself.
	^ {
		  obj1.
		  obj1.
		  obj2.
		  obj2 } -> '| dragonTestObject1 dragonTestObject2 |
dragonTestObject1 := DragonTestObject new.
dragonTestObject2 := DragonTestObject new.
{(dragonTestObject1
   name: #test;
   yourself) . 
dragonTestObject1 . 
(dragonTestObject2
   name: dragonTestObject1;
   yourself) . 
dragonTestObject2}'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptAssociation1 [

	| serializer |
	serializer := DragonSerialization new.
	self
		assert: (serializer serializeForScript: (1->2))
		equals: '1 -> 2'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptAssociation2 [

	| serializer |
	serializer := DragonSerialization new.
	self
		assert: (serializer serializeForScript: 1 -> Object new)
		equals: '1 -> Object new'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptAssociation3 [

	| serializer |
	serializer := DragonSerialization new.
	self
		assert: (serializer serializeForScript: Object new -> Object new)
		equals: 'Object new -> Object new'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptAssociation4 [

	| serializer obj |
	serializer := DragonSerialization new.
	obj := Object new.
	self
		assert: (serializer serializeForScript: obj -> obj)
		equals: '| object |
object := Object new.
object -> object'
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
		equals: 'Bag new
   add: 1 withOccurrences: 5;
   yourself'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptCollection5 [

	| serializer obj1 |
	serializer := DragonSerialization new.
	obj1 := Object new.
	self
		assert: (serializer serializeForScript: {obj1 . obj1. obj1})
		equals: '| object |
object := Object new.
{object . 
object . 
object}'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptCollection6 [

	| serializer collection |
	serializer := DragonSerialization new.
	collection := Dictionary new.
	collection at: 1 put: Object new.
	collection at: 2 put: Object new.
	collection at: 3 put: Object new.
	self
		assert: (serializer serializeForScript: collection)
		equals: 'Dictionary new
   at: 1 put: Object new;
   at: 2 put: Object new;
   at: 3 put: Object new;
   yourself'
]

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptCollection7 [

	| serializer collection obj |
	serializer := DragonSerialization new.
	collection := Dictionary new.
	obj := Object new.
	collection at: 1 put: obj.
	collection at: 2 put: obj.
	collection at: 3 put: obj.
	self
		assert: (serializer serializeForScript: collection)
		equals: '| object |
object := Object new.
Dictionary new
   at: 1 put: object;
   at: 2 put: object;
   at: 3 put: object;
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

{ #category : 'tests' }
DragonSerializationTest >> testSerializeForScriptObject4 [

	| serializer |
	serializer := DragonSerialization new.
	self
		assert: (serializer serializeForScript: self objectToTest4 key)
		equals: self objectToTest4 value
]

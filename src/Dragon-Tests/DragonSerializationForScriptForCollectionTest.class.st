Class {
	#name : 'DragonSerializationForScriptForCollectionTest',
	#superclass : 'DragonSerializationForScriptTest',
	#category : 'Dragon-Tests',
	#package : 'Dragon-Tests'
}

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForCollectionTest >> scriptArray1 [

	^ '#()'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForCollectionTest >> scriptArray2 [

	^ '{1 . 
2 . 
3}'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForCollectionTest >> scriptArray3 [

	^ '{Object new . 
Object new . 
Object new}'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForCollectionTest >> scriptArray4 [

	^ '| object |
object := Object new.
{object . 
object . 
object}'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForCollectionTest >> scriptBag1 [

	^ 'Bag new'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForCollectionTest >> scriptBag2 [

	^ 'Bag new
   add: 1 withOccurrences: 5;
   yourself'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForCollectionTest >> scriptBag3 [

	^ 'Bag new
   add: 1 withOccurrences: 5;
   add: 2 withOccurrences: 10;
   yourself'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForCollectionTest >> scriptDictionary1 [

	^ 'Dictionary new'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForCollectionTest >> scriptDictionary2 [

	^ 'Dictionary new
   at: 1 put: Object new;
   at: 2 put: Object new;
   at: 3 put: Object new;
   yourself'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForCollectionTest >> scriptDictionary3 [

	^ '| object |
object := Object new.
Dictionary new
   at: 1 put: object;
   at: 2 put: object;
   at: 3 put: object;
   yourself'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForCollectionTest >> scriptOrderedCollection1 [

	^ 'OrderedCollection new'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForCollectionTest >> scriptOrderedCollection2 [

	^ 'OrderedCollection new
   add: 5;
   add: 7;
   add: 9;
   add: 11;
   add: 13;
   yourself'
]

Class {
	#name : 'OtCSerializationForScriptForCollectionTest',
	#superclass : 'OtCSerializationForScriptTest',
	#category : 'ObjectsToCode-Tests',
	#package : 'ObjectsToCode-Tests'
}

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForCollectionTest >> scriptArray1 [

	^ '#()'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForCollectionTest >> scriptArray2 [

	^ '{1 . 
2 . 
3}'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForCollectionTest >> scriptArray3 [

	^ '{Object new . 
Object new . 
Object new}'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForCollectionTest >> scriptArray4 [

	^ '| object |
object := Object new.
{object . 
object . 
object}'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForCollectionTest >> scriptBag1 [

	^ 'Bag new'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForCollectionTest >> scriptBag2 [

	^ 'Bag new
   add: 1 withOccurrences: 5;
   yourself'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForCollectionTest >> scriptBag3 [

	^ 'Bag new
   add: 1 withOccurrences: 5;
   add: 2 withOccurrences: 10;
   yourself'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForCollectionTest >> scriptDictionary1 [

	^ 'Dictionary new'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForCollectionTest >> scriptDictionary2 [

	^ 'Dictionary new
   at: 1 put: Object new;
   at: 2 put: Object new;
   at: 3 put: Object new;
   yourself'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForCollectionTest >> scriptDictionary3 [

	^ '| object |
object := Object new.
Dictionary new
   at: 1 put: object;
   at: 2 put: object;
   at: 3 put: object;
   yourself'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForCollectionTest >> scriptOrderedCollection1 [

	^ 'OrderedCollection new'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForCollectionTest >> scriptOrderedCollection2 [

	^ 'OrderedCollection new
   add: 5;
   add: 7;
   add: 9;
   add: 11;
   add: 13;
   yourself'
]

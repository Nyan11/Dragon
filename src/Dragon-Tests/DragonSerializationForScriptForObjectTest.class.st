Class {
	#name : 'DragonSerializationForScriptForObjectTest',
	#superclass : 'DragonSerializationForScriptTest',
	#category : 'Dragon-Tests',
	#package : 'Dragon-Tests'
}

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForObjectTest >> script1 [

	^ 'DragonMockObject new'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForObjectTest >> script2 [

	^ 'DragonMockObject new
   slot1: #test;
   yourself'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForObjectTest >> script3 [

	^ 'DragonMockObject new
   addOnSlot2: 1;
   addOnSlot2: 2;
   addOnSlot2: 3;
   addOnSlot2: 4;
   addOnSlot2: 5;
   yourself'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForObjectTest >> script4 [

	^ 'DragonMockObject new
   stateBForSlot3;
   yourself'
]

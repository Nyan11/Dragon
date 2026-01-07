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

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForObjectTest >> scriptMultipleReferences1 [

	^ 'DragonMockObject new
   slot1: DragonMockObject new;
   yourself'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForObjectTest >> scriptMultipleReferences2 [

	^ '| dragonMockObject |
dragonMockObject := DragonMockObject new.
dragonMockObject
   slot1: dragonMockObject;
   yourself'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForObjectTest >> scriptMultipleReferences3 [

	^ 'DragonMockObject new
   slot1: (DragonMockObject new
         slot1: (DragonMockObject new
               slot1: DragonMockObject new;
               yourself);
         yourself);
   yourself'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForObjectTest >> scriptMultipleReferences4 [

	^ '| dragonMockObject1 dragonMockObject2 |
dragonMockObject1 := DragonMockObject new.
dragonMockObject2 := DragonMockObject new.
dragonMockObject1
   slot1: #object1;
   addOnSlot2: dragonMockObject1;
   addOnSlot2: (dragonMockObject2
         slot1: #object2;
         addOnSlot2: dragonMockObject1;
         addOnSlot2: dragonMockObject2;
         yourself);
   yourself'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForObjectTest >> scriptMultipleReferences5 [

	^ '| dragonMockObject1 dragonMockObject2 dragonMockObject3 |
dragonMockObject1 := DragonMockObject new.
dragonMockObject2 := DragonMockObject new.
dragonMockObject3 := DragonMockObject new.
dragonMockObject1
   slot1: #object1;
   addOnSlot2: dragonMockObject1;
   addOnSlot2: (dragonMockObject2
         slot1: #object2;
         addOnSlot2: dragonMockObject1;
         addOnSlot2: dragonMockObject2;
         addOnSlot2: (dragonMockObject3
               slot1: #object3;
               addOnSlot2: dragonMockObject1;
               addOnSlot2: dragonMockObject2;
               addOnSlot2: dragonMockObject3;
               yourself);
         yourself);
   addOnSlot2: dragonMockObject3;
   yourself'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForObjectTest >> scriptMultipleReferences6 [

	^ '| dragonMockObject1 dragonMockObject2 dragonMockObject3 dragonMockObject4 |
dragonMockObject1 := DragonMockObject new.
dragonMockObject2 := DragonMockObject new.
dragonMockObject3 := DragonMockObject new.
dragonMockObject4 := DragonMockObject new.
dragonMockObject1
   slot1: #object1;
   addOnSlot2: dragonMockObject1;
   addOnSlot2: (dragonMockObject2
         slot1: #object2;
         addOnSlot2: dragonMockObject1;
         addOnSlot2: dragonMockObject2;
         addOnSlot2: (dragonMockObject3
               slot1: #object3;
               addOnSlot2: dragonMockObject1;
               addOnSlot2: dragonMockObject2;
               addOnSlot2: dragonMockObject3;
               addOnSlot2: (dragonMockObject4
                     slot1: #object4;
                     addOnSlot2: dragonMockObject1;
                     addOnSlot2: dragonMockObject2;
                     addOnSlot2: dragonMockObject3;
                     addOnSlot2: dragonMockObject4;
                     yourself);
               yourself);
         addOnSlot2: dragonMockObject4;
         yourself);
   addOnSlot2: dragonMockObject3;
   addOnSlot2: dragonMockObject4;
   yourself'
]

Class {
	#name : 'OtCSerializationForScriptForObjectTest',
	#superclass : 'OtCSerializationForScriptTest',
	#category : 'ObjectsToCode-Tests',
	#package : 'ObjectsToCode-Tests'
}

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForObjectTest >> script1 [

	^ 'OtCMockObject new'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForObjectTest >> script2 [

	^ 'OtCMockObject new
   slot1: #test;
   yourself'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForObjectTest >> script3 [

	^ 'OtCMockObject new
   addOnSlot2: 1;
   addOnSlot2: 2;
   addOnSlot2: 3;
   addOnSlot2: 4;
   addOnSlot2: 5;
   yourself'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForObjectTest >> script4 [

	^ 'OtCMockObject new
   stateBForSlot3;
   yourself'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForObjectTest >> scriptMultipleReferences1 [

	^ 'OtCMockObject new
   slot1: OtCMockObject new;
   yourself'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForObjectTest >> scriptMultipleReferences2 [

	^ '| otCMockObject |
otCMockObject := OtCMockObject new.
otCMockObject
   slot1: otCMockObject;
   yourself'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForObjectTest >> scriptMultipleReferences3 [

	^ 'OtCMockObject new
   slot1: (OtCMockObject new
         slot1: (OtCMockObject new
               slot1: OtCMockObject new;
               yourself);
         yourself);
   yourself'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForObjectTest >> scriptMultipleReferences4 [

	^ '| otCMockObject1 otCMockObject2 |
otCMockObject1 := OtCMockObject new.
otCMockObject2 := OtCMockObject new.
otCMockObject1
   slot1: #object1;
   addOnSlot2: otCMockObject1;
   addOnSlot2: (otCMockObject2
         slot1: #object2;
         addOnSlot2: otCMockObject1;
         addOnSlot2: otCMockObject2;
         yourself);
   yourself'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForObjectTest >> scriptMultipleReferences5 [

	^ '| otCMockObject1 otCMockObject2 otCMockObject3 |
otCMockObject1 := OtCMockObject new.
otCMockObject2 := OtCMockObject new.
otCMockObject3 := OtCMockObject new.
otCMockObject1
   slot1: #object1;
   addOnSlot2: otCMockObject1;
   addOnSlot2: (otCMockObject2
         slot1: #object2;
         addOnSlot2: otCMockObject1;
         addOnSlot2: otCMockObject2;
         addOnSlot2: (otCMockObject3
               slot1: #object3;
               addOnSlot2: otCMockObject1;
               addOnSlot2: otCMockObject2;
               addOnSlot2: otCMockObject3;
               yourself);
         yourself);
   addOnSlot2: otCMockObject3;
   yourself'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForObjectTest >> scriptMultipleReferences6 [

	^ '| otCMockObject1 otCMockObject2 otCMockObject3 otCMockObject4 |
otCMockObject1 := OtCMockObject new.
otCMockObject2 := OtCMockObject new.
otCMockObject3 := OtCMockObject new.
otCMockObject4 := OtCMockObject new.
otCMockObject1
   slot1: #object1;
   addOnSlot2: otCMockObject1;
   addOnSlot2: (otCMockObject2
         slot1: #object2;
         addOnSlot2: otCMockObject1;
         addOnSlot2: otCMockObject2;
         addOnSlot2: (otCMockObject3
               slot1: #object3;
               addOnSlot2: otCMockObject1;
               addOnSlot2: otCMockObject2;
               addOnSlot2: otCMockObject3;
               addOnSlot2: (otCMockObject4
                     slot1: #object4;
                     addOnSlot2: otCMockObject1;
                     addOnSlot2: otCMockObject2;
                     addOnSlot2: otCMockObject3;
                     addOnSlot2: otCMockObject4;
                     yourself);
               yourself);
         addOnSlot2: otCMockObject4;
         yourself);
   addOnSlot2: otCMockObject3;
   addOnSlot2: otCMockObject4;
   yourself'
]

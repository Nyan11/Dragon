Class {
	#name : 'OtCMockObject',
	#superclass : 'Object',
	#instVars : [
		'slot1',
		'slot2',
		'slot3'
	],
	#category : 'ObjectsToCode-Tests',
	#package : 'ObjectsToCode-Tests'
}

{ #category : 'adding' }
OtCMockObject >> addOnSlot2: anObject [

	slot2 add: anObject
]

{ #category : 'adding' }
OtCMockObject >> falseForSlot3 [

	slot3 := false.
]

{ #category : 'initialization' }
OtCMockObject >> initialize [

	super initialize.
	slot2 := OrderedCollection new.
	slot3 := #stateA
]

{ #category : 'as yet unclassified' }
OtCMockObject >> otcSlot1 [

	<metaOtC>
	^ OtCSingleAttribute new
		  name: 'Slot1';
		  getter: #slot1;
		  setter: #slot1:;
		  types: { Object };
		  yourself
]

{ #category : 'as yet unclassified' }
OtCMockObject >> otcSlot2 [

	<metaOtC>
	^ OtCMultipleAttribute new
		  name: 'Slot2';
		  getterForAll: #slot2;
		  setterForOne: #addOnSlot2:;
		  types: { Object };
		  yourself
]

{ #category : 'as yet unclassified' }
OtCMockObject >> otcSlot3 [

	<metaOtC>
	^ OtCStateAttribute new
		  name: 'Slot3';
		  defaultState: [ self slot3 = #stateA ];
		  if: [ self slot3 = #stateB ] stateIs: #stateBForSlot3;
		  if: [ self slot3 = #stateC ] stateIs: #stateCForSlot3;
		  yourself
]

{ #category : 'accessing' }
OtCMockObject >> slot1 [

	^ slot1
]

{ #category : 'accessing' }
OtCMockObject >> slot1: anObject [

	slot1 := anObject
]

{ #category : 'accessing' }
OtCMockObject >> slot2 [

	^ slot2
]

{ #category : 'accessing' }
OtCMockObject >> slot3 [

	^ slot3
]

{ #category : 'adding' }
OtCMockObject >> stateAForSlot3 [

	slot3 := #stateA
]

{ #category : 'adding' }
OtCMockObject >> stateBForSlot3 [

	slot3 := #stateB
]

{ #category : 'adding' }
OtCMockObject >> stateCForSlot3 [

	slot3 := #stateC
]

Class {
	#name : 'DragonMockObject',
	#superclass : 'Object',
	#instVars : [
		'slot1',
		'slot2',
		'slot3'
	],
	#category : 'Dragon-Tests',
	#package : 'Dragon-Tests'
}

{ #category : 'adding' }
DragonMockObject >> addOnSlot2: anObject [

	slot2 add: anObject
]

{ #category : 'as yet unclassified' }
DragonMockObject >> dragonSlot1 [

	<metaDragon>
	^ DragonSingleAttribute new
		  name: 'Slot1';
		  getter: #slot1;
		  setter: #slot1:;
		  types: { Object };
		  defaultValue: nil;
		  yourself
]

{ #category : 'as yet unclassified' }
DragonMockObject >> dragonSlot2 [

	<metaDragon>
	^ DragonMultipleAttribute new
		  name: 'Slot2';
		  getterForAll: #slot2;
		  setterForOne: #addOnSlot2:;
		  types: { Object };
		  yourself
]

{ #category : 'as yet unclassified' }
DragonMockObject >> dragonSlot3 [

	<metaDragon>
	^ DragonStateAttribute new
		  name: 'Slot3';
		  if: [ self slot3 = #stateA ] stateIs: #stateAForSlot3;
		  if: [ self slot3 = #stateB ] stateIs: #stateBforSlot3;
		  if: [ self slot3 = #stateC ] stateIs: #stateCforSlot3;
		  yourself
]

{ #category : 'adding' }
DragonMockObject >> falseForSlot3 [

	slot3 := false.
]

{ #category : 'initialization' }
DragonMockObject >> initialize [

	super initialize.
	slot2 := OrderedCollection new.
	slot3 := #stateA
]

{ #category : 'accessing' }
DragonMockObject >> slot1 [

	^ slot1
]

{ #category : 'accessing' }
DragonMockObject >> slot1: anObject [

	slot1 := anObject
]

{ #category : 'accessing' }
DragonMockObject >> slot2 [

	^ slot2
]

{ #category : 'accessing' }
DragonMockObject >> slot3 [

	^ slot3
]

{ #category : 'adding' }
DragonMockObject >> stateAForSlot3 [

	slot3 := #stateA
]

{ #category : 'adding' }
DragonMockObject >> stateBForSlot3 [

	slot3 := #stateB
]

{ #category : 'adding' }
DragonMockObject >> stateCForSlot3 [

	slot3 := #stateC
]

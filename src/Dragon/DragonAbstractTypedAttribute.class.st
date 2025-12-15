Class {
	#name : 'DragonAbstractTypedAttribute',
	#superclass : 'DragonAbstractAttribute',
	#instVars : [
		'types'
	],
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'testing' }
DragonAbstractTypedAttribute class >> isAbstract [

	^ self == DragonAbstractTypedAttribute
]

{ #category : 'adding' }
DragonAbstractTypedAttribute >> addType: aClass [

	self types: self types , aClass
]

{ #category : 'as yet unclassified' }
DragonAbstractTypedAttribute >> dragonTypes [

	<metaDragon>
	^ DragonStateAttribute new
	     name: 'Type State';
		  if: #isMultiple stateIs: (DragonMultipleAttribute new
					name: 'Types';
				   type: Class class;
				   getterForAll: #types;
				   addOne: #addType:;
				   yourself);
		  defaultState: (DragonSingleAttribute new
		         name: 'Type';
				   type: Class class;
				   getter: #type;
				   setter: #type:;
				   yourself);
		  yourself
]

{ #category : 'testing' }
DragonAbstractTypedAttribute >> isMultiple [

	^ self explicitRequirement
]

{ #category : 'testing' }
DragonAbstractTypedAttribute >> isSingle [

	^ self isMultiple not
]

{ #category : 'accessing' }
DragonAbstractTypedAttribute >> type [

	^ types first
]

{ #category : 'accessing' }
DragonAbstractTypedAttribute >> type: aClass [

	types := { aClass }
]

{ #category : 'accessing' }
DragonAbstractTypedAttribute >> types [

	^ types
]

{ #category : 'accessing' }
DragonAbstractTypedAttribute >> types: anObject [

	types := anObject
]

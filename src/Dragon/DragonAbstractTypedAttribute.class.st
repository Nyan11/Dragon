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
	| tmp1 tmp2 tmp3 |
	tmp1 := DragonStateAttribute new.
	tmp1 name: 'Type State'.
	tmp2 := DragonMultipleAttribute new.
	tmp2
		name: 'Types';
		type: Class class;
		getterForAll: #types;
		addOne: #addType:.
	tmp1 if: #isMultiple stateIs: tmp2 yourself.
	tmp3 := DragonSingleAttribute new.
	tmp3
		name: 'Type';
		type: Class class;
		getter: #type;
		setter: #type:.
	tmp1 defaultState: tmp3 yourself.
	^ tmp1 yourself
]

{ #category : 'as yet unclassified' }
DragonAbstractTypedAttribute >> internalStatesFor: anObject [

	^ {  }
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

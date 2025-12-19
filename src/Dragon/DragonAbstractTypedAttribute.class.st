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
	| tmp2 tmp4 tmp6 |
	tmp2 := DragonStateAttribute new.
	tmp2 name: 'Type State'.
	tmp4 := DragonMultipleAttribute new.
	tmp4
		name: 'Types';
		type: Class class;
		getterForAll: #types;
		addOne: #addType:.
	tmp2 if: #isMultiple stateIs: tmp4 yourself.
	tmp6 := DragonSingleAttribute new.
	tmp6
		name: 'Type';
		type: Class class;
		getter: #type;
		setter: #type:.
	tmp2 defaultState: tmp6 yourself.
	^ tmp2 yourself
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

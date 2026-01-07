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

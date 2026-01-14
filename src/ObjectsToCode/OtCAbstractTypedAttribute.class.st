Class {
	#name : 'OtCAbstractTypedAttribute',
	#superclass : 'OtCAbstractAttribute',
	#instVars : [
		'types'
	],
	#category : 'ObjectsToCode-Description',
	#package : 'ObjectsToCode',
	#tag : 'Description'
}

{ #category : 'testing' }
OtCAbstractTypedAttribute class >> isAbstract [

	^ self == OtCAbstractTypedAttribute
]

{ #category : 'adding' }
OtCAbstractTypedAttribute >> addType: aClass [

	self types: self types , aClass
]

{ #category : 'as yet unclassified' }
OtCAbstractTypedAttribute >> internalStatesFor: anObject [

	^ {  }
]

{ #category : 'testing' }
OtCAbstractTypedAttribute >> isSingle [

	^ self isMultiple not
]

{ #category : 'accessing' }
OtCAbstractTypedAttribute >> type [

	^ types first
]

{ #category : 'accessing' }
OtCAbstractTypedAttribute >> type: aClass [

	types := { aClass }
]

{ #category : 'accessing' }
OtCAbstractTypedAttribute >> types [

	^ types
]

{ #category : 'accessing' }
OtCAbstractTypedAttribute >> types: anObject [

	types := anObject
]

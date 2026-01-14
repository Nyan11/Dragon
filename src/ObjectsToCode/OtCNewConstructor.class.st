Class {
	#name : 'OtCNewConstructor',
	#superclass : 'OtCConstructor',
	#instVars : [
		'object'
	],
	#category : 'ObjectsToCode-Description',
	#package : 'ObjectsToCode',
	#tag : 'Description'
}

{ #category : 'converting' }
OtCNewConstructor >> constructorString [

	^ '<1s> new' expandMacrosWith: self object class printString
]

{ #category : 'accessing' }
OtCNewConstructor >> object [

	^ object
]

{ #category : 'accessing' }
OtCNewConstructor >> object: anObject [

	object := anObject
]

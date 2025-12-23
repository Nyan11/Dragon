Class {
	#name : 'DragonNewConstructor',
	#superclass : 'DragonConstructor',
	#instVars : [
		'object'
	],
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'converting' }
DragonNewConstructor >> constructorString [

	^ '<1s> new' expandMacrosWith: self object class printString
]

{ #category : 'accessing' }
DragonNewConstructor >> object [

	^ object
]

{ #category : 'accessing' }
DragonNewConstructor >> object: anObject [

	object := anObject
]

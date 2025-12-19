Class {
	#name : 'DragonBasicConstructor',
	#superclass : 'DragonConstructor',
	#instVars : [
		'object'
	],
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'converting' }
DragonBasicConstructor >> constructorString [

	^ '<1s> new' expandMacrosWith: self object class printString
]

{ #category : 'accessing' }
DragonBasicConstructor >> object [

	^ object
]

{ #category : 'accessing' }
DragonBasicConstructor >> object: anObject [

	object := anObject
]

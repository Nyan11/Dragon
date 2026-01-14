Class {
	#name : 'OtCLiteralConstructor',
	#superclass : 'OtCConstructor',
	#instVars : [
		'string'
	],
	#category : 'ObjectsToCode-Description',
	#package : 'ObjectsToCode',
	#tag : 'Description'
}

{ #category : 'converting' }
OtCLiteralConstructor >> constructorString [

	^ string
]

{ #category : 'accessing' }
OtCLiteralConstructor >> string [

	^ string
]

{ #category : 'accessing' }
OtCLiteralConstructor >> string: anObject [

	string := anObject
]

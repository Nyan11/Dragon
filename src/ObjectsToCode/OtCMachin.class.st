Class {
	#name : 'OtCMachin',
	#superclass : 'Object',
	#instVars : [
		'name',
		'references'
	],
	#category : 'ObjectsToCode-Serialization',
	#package : 'ObjectsToCode',
	#tag : 'Serialization'
}

{ #category : 'accessing' }
OtCMachin >> name [

	^ name
]

{ #category : 'accessing' }
OtCMachin >> name: anObject [

	name := anObject
]

{ #category : 'as yet unclassified' }
OtCMachin >> otcConstructor [

	^ OtCBlockClosureConstructor new arguments: self name; yourself
]

{ #category : 'accessing' }
OtCMachin >> references [

	^ references
]

{ #category : 'accessing' }
OtCMachin >> references: anObject [

	references := anObject
]

Class {
	#name : 'OtCSerializationForScriptForAssociationTest',
	#superclass : 'OtCSerializationForScriptTest',
	#category : 'ObjectsToCode-Tests',
	#package : 'ObjectsToCode-Tests'
}

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForAssociationTest >> scriptAssociation1 [

	^ '1 -> 2'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForAssociationTest >> scriptAssociation2 [

	^ 'Object new -> 2'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForAssociationTest >> scriptAssociation3 [

	^ 'Object new -> Object new'
]

{ #category : 'as yet unclassified' }
OtCSerializationForScriptForAssociationTest >> scriptAssociation4 [

	^ '| object |
object := Object new.
object -> object'
]

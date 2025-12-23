Class {
	#name : 'DragonSerializationForScriptForAssociationTest',
	#superclass : 'DragonSerializationForScriptTest',
	#category : 'Dragon-Tests',
	#package : 'Dragon-Tests'
}

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForAssociationTest >> scriptAssociation1 [

	^ '1 -> 2'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForAssociationTest >> scriptAssociation2 [

	^ 'Object new -> 2'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForAssociationTest >> scriptAssociation3 [

	^ 'Object new -> Object new'
]

{ #category : 'as yet unclassified' }
DragonSerializationForScriptForAssociationTest >> scriptAssociation4 [

	^ '| object |
object := Object new.
object -> object'
]

Class {
	#name : 'DragonAbstractAttribute',
	#superclass : 'Object',
	#instVars : [
		'name'
	],
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'testing' }
DragonAbstractAttribute class >> isAbstract [

	^ self == DragonAbstractAttribute
]

{ #category : 'compiling' }
DragonAbstractAttribute >> compileDragonOn: aClass withClassification: aClassification [

	| macroString method |
	macroString := 'dragon<1s><r><r><t><metaDragon><r><r><t>^(<2s>)<r>'.
	method := macroString expandMacrosWith: self name capitalized with: self dragonSerializeForScript.
	aClass compile: method classified: aClassification
]

{ #category : 'as yet unclassified' }
DragonAbstractAttribute >> dragonEquals: anObject [

	(self class = anObject class) ifFalse: [ ^ false ].
	^ (self name = anObject name)
]

{ #category : 'accessing' }
DragonAbstractAttribute >> name [

	^ name
]

{ #category : 'accessing' }
DragonAbstractAttribute >> name: anObject [

	name := anObject
]

{ #category : 'as yet unclassified' }
DragonAbstractAttribute >> relationsFor: anObject [

	^ self explicitRequirement
]

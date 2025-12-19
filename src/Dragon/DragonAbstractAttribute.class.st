Class {
	#name : 'DragonAbstractAttribute',
	#superclass : 'DragonObject',
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
DragonAbstractAttribute >> dragonEquals: arg1 [

	self class = arg1 class ifFalse: [ ^ false ].
	^ self name = arg1 name
]

{ #category : 'as yet unclassified' }
DragonAbstractAttribute >> dragonVisit: aDragonVisitor [

	aDragonVisitor visitAttribute: self 
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
DragonAbstractAttribute >> relationsFor: arg1 [

	^ self explicitRequirement
]

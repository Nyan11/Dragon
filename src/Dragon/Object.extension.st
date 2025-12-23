Extension { #name : 'Object' }

{ #category : '*Dragon' }
Object >> dragonConstructor [

	self isLiteral ifTrue: [ ^ DragonLiteralConstructor new string: self printString  ].
	^ DragonNewConstructor new object: self
]

{ #category : '*Dragon' }
Object >> dragonEquals: anObject [

	^ self = anObject
]

{ #category : '*Dragon' }
Object >> dragonMetaAttributes [

	| methodsDict |
	methodsDict := Dictionary new.
	(Pragma allNamed: #metaDragon from: self class to: Object) do: [ :p |
			  methodsDict
				  at: p method selector
				  ifAbsentPut: [ p method valueWithReceiver: self ] ].
	^ methodsDict values
]

{ #category : '*Dragon' }
Object >> dragonMetaRelations [

	^ self dragonMetaAttributes flatCollect: [ :each |
		each relationsFor: self ]
]

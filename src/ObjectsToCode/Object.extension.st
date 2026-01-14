Extension { #name : 'Object' }

{ #category : '*ObjectsToCode' }
Object >> otcConstructor [

	self isLiteral ifTrue: [ ^ OtCLiteralConstructor new string: self printString  ].
	^ OtCNewConstructor new object: self
]

{ #category : '*ObjectsToCode' }
Object >> otcEquals: anObject [

	^ self = anObject
]

{ #category : '*ObjectsToCode' }
Object >> otcMetaAttributes [

	| methodsDict |
	methodsDict := Dictionary new.
	(Pragma allNamed: #metaOtC from: self class to: Object) do: [ :p |
			methodsDict
				at: p method selector
				ifAbsentPut: [ p method valueWithReceiver: self ] ].
	^ methodsDict values
]

{ #category : '*ObjectsToCode' }
Object >> otcMetaInternalStates [

	^ self otcMetaAttributes flatCollect: [ :each |
		  each internalStatesFor: self ]
]

{ #category : '*ObjectsToCode' }
Object >> otcMetaRelations [

	^ self otcMetaAttributes flatCollect: [ :each |
		each relationsFor: self ]
]

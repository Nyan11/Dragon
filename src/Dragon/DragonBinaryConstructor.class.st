Class {
	#name : 'DragonBinaryConstructor',
	#superclass : 'DragonConstructorWithReferences',
	#instVars : [
		'firstGetter',
		'lastGetter',
		'binaryOperator',
		'firstReference',
		'lastReference'
	],
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'accessing' }
DragonBinaryConstructor class >> firstGetter: aFirstGetter lastGetter: aLastGetter binaryOperator: aBinaryOperator [

	^ self new
		  firstGetter: aFirstGetter;
		  lastGetter: aLastGetter;
		  binaryOperator: aBinaryOperator;
		  yourself
]

{ #category : 'adding' }
DragonBinaryConstructor >> addNextReference: aDragonReference withAttribute: aDragonAttribute [

	aDragonAttribute getter = self firstGetter ifTrue: [
		self firstReference: aDragonReference ].
	aDragonAttribute getter = self lastGetter ifTrue: [
		self lastReference: aDragonReference ]
]

{ #category : 'accessing' }
DragonBinaryConstructor >> beginConstructorString [

	^ '('
]

{ #category : 'accessing' }
DragonBinaryConstructor >> binaryOperator [

	^ binaryOperator
]

{ #category : 'accessing' }
DragonBinaryConstructor >> binaryOperator: anObject [

	binaryOperator := anObject
]

{ #category : 'accessing' }
DragonBinaryConstructor >> endConstructorString [

	^ ')'
]

{ #category : 'accessing' }
DragonBinaryConstructor >> firstGetter [

	^ firstGetter
]

{ #category : 'accessing' }
DragonBinaryConstructor >> firstGetter: anObject [

	firstGetter := anObject
]

{ #category : 'accessing' }
DragonBinaryConstructor >> firstReference [

	^ firstReference
]

{ #category : 'accessing' }
DragonBinaryConstructor >> firstReference: anObject [

	firstReference := anObject
]

{ #category : 'accessing' }
DragonBinaryConstructor >> lastGetter [

	^ lastGetter
]

{ #category : 'accessing' }
DragonBinaryConstructor >> lastGetter: anObject [

	lastGetter := anObject
]

{ #category : 'accessing' }
DragonBinaryConstructor >> lastReference [

	^ lastReference
]

{ #category : 'accessing' }
DragonBinaryConstructor >> lastReference: anObject [

	lastReference := anObject
]

{ #category : 'accessing' }
DragonBinaryConstructor >> references [

	^ {
		  self firstReference.
		  self lastReference }
]

{ #category : 'accessing' }
DragonBinaryConstructor >> separatorConstructorString [

	^ ')<1s>(' expandMacrosWith: self binaryOperator
]

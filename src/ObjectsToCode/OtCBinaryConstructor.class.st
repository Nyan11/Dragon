Class {
	#name : 'OtCBinaryConstructor',
	#superclass : 'OtCConstructorWithReferences',
	#instVars : [
		'firstGetter',
		'lastGetter',
		'binaryOperator',
		'firstReference',
		'lastReference'
	],
	#category : 'ObjectsToCode-Description',
	#package : 'ObjectsToCode',
	#tag : 'Description'
}

{ #category : 'accessing' }
OtCBinaryConstructor class >> firstGetter: aFirstGetter lastGetter: aLastGetter binaryOperator: aBinaryOperator [

	^ self new
		  firstGetter: aFirstGetter;
		  lastGetter: aLastGetter;
		  binaryOperator: aBinaryOperator;
		  yourself
]

{ #category : 'adding' }
OtCBinaryConstructor >> addNextReference: aDragonReference withAttribute: aDragonAttribute [

	aDragonAttribute getter = self firstGetter ifTrue: [
		self firstReference: aDragonReference ].
	aDragonAttribute getter = self lastGetter ifTrue: [
		self lastReference: aDragonReference ]
]

{ #category : 'accessing' }
OtCBinaryConstructor >> beginConstructorString [

	^ '('
]

{ #category : 'accessing' }
OtCBinaryConstructor >> binaryOperator [

	^ binaryOperator
]

{ #category : 'accessing' }
OtCBinaryConstructor >> binaryOperator: anObject [

	binaryOperator := anObject
]

{ #category : 'accessing' }
OtCBinaryConstructor >> endConstructorString [

	^ ')'
]

{ #category : 'accessing' }
OtCBinaryConstructor >> firstGetter [

	^ firstGetter
]

{ #category : 'accessing' }
OtCBinaryConstructor >> firstGetter: anObject [

	firstGetter := anObject
]

{ #category : 'accessing' }
OtCBinaryConstructor >> firstReference [

	^ firstReference
]

{ #category : 'accessing' }
OtCBinaryConstructor >> firstReference: anObject [

	firstReference := anObject
]

{ #category : 'accessing' }
OtCBinaryConstructor >> lastGetter [

	^ lastGetter
]

{ #category : 'accessing' }
OtCBinaryConstructor >> lastGetter: anObject [

	lastGetter := anObject
]

{ #category : 'accessing' }
OtCBinaryConstructor >> lastReference [

	^ lastReference
]

{ #category : 'accessing' }
OtCBinaryConstructor >> lastReference: anObject [

	lastReference := anObject
]

{ #category : 'accessing' }
OtCBinaryConstructor >> references [

	^ {
		  self firstReference.
		  self lastReference }
]

{ #category : 'accessing' }
OtCBinaryConstructor >> separatorConstructorString [

	^ ')<1s>(' expandMacrosWith: self binaryOperator
]

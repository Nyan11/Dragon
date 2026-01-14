Class {
	#name : 'OtCUnaryConstructor',
	#superclass : 'OtCConstructorWithReferences',
	#instVars : [
		'getter',
		'unaryOperator',
		'reference'
	],
	#category : 'ObjectsToCode-Description',
	#package : 'ObjectsToCode',
	#tag : 'Description'
}

{ #category : 'as yet unclassified' }
OtCUnaryConstructor class >> getter: aGetter unaryOperator: anOperator [

	^ self new
		  getter: aGetter;
		  unaryOperator: anOperator;
		  yourself
]

{ #category : 'adding' }
OtCUnaryConstructor >> addNextReference: aDragonReference withAttribute: aDragonAttribute [

	aDragonAttribute getter = self getter ifTrue: [
		self reference: aDragonReference ]
]

{ #category : 'accessing' }
OtCUnaryConstructor >> beginConstructorString [

	^ '(('
]

{ #category : 'accessing' }
OtCUnaryConstructor >> endConstructorString [

	^ ') <1s>)' expandMacrosWith: self unaryOperator
]

{ #category : 'accessing' }
OtCUnaryConstructor >> getter [

	^ getter
]

{ #category : 'accessing' }
OtCUnaryConstructor >> getter: anObject [

	getter := anObject
]

{ #category : 'accessing' }
OtCUnaryConstructor >> reference [

	^ reference
]

{ #category : 'accessing' }
OtCUnaryConstructor >> reference: anObject [

	reference := anObject
]

{ #category : 'accessing' }
OtCUnaryConstructor >> references [

	^ { self reference }
]

{ #category : 'accessing' }
OtCUnaryConstructor >> separatorConstructorString [

	^ ''
]

{ #category : 'accessing' }
OtCUnaryConstructor >> unaryOperator [

	^ unaryOperator
]

{ #category : 'accessing' }
OtCUnaryConstructor >> unaryOperator: anObject [

	unaryOperator := anObject
]

Class {
	#name : 'DragonUnaryConstructor',
	#superclass : 'DragonConstructorWithReferences',
	#instVars : [
		'getter',
		'unaryOperator',
		'reference'
	],
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'as yet unclassified' }
DragonUnaryConstructor class >> getter: aGetter unaryOperator: anOperator [

	^ self new
		  getter: aGetter;
		  unaryOperator: anOperator;
		  yourself
]

{ #category : 'adding' }
DragonUnaryConstructor >> addNextReference: aDragonReference withAttribute: aDragonAttribute [

	aDragonAttribute getter = self getter ifTrue: [
		self reference: aDragonReference ]
]

{ #category : 'accessing' }
DragonUnaryConstructor >> beginConstructorString [

	^ '(('
]

{ #category : 'accessing' }
DragonUnaryConstructor >> endConstructorString [

	^ ') <1s>)' expandMacrosWith: self unaryOperator
]

{ #category : 'accessing' }
DragonUnaryConstructor >> getter [

	^ getter
]

{ #category : 'accessing' }
DragonUnaryConstructor >> getter: anObject [

	getter := anObject
]

{ #category : 'accessing' }
DragonUnaryConstructor >> reference [

	^ reference
]

{ #category : 'accessing' }
DragonUnaryConstructor >> reference: anObject [

	reference := anObject
]

{ #category : 'accessing' }
DragonUnaryConstructor >> references [

	^ { self reference }
]

{ #category : 'accessing' }
DragonUnaryConstructor >> separatorConstructorString [

	^ ''
]

{ #category : 'accessing' }
DragonUnaryConstructor >> unaryOperator [

	^ unaryOperator
]

{ #category : 'accessing' }
DragonUnaryConstructor >> unaryOperator: anObject [

	unaryOperator := anObject
]

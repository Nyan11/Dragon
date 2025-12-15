Class {
	#name : 'DragonStateAttribute',
	#superclass : 'DragonAbstractAttribute',
	#instVars : [
		'states',
		'defaultState'
	],
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'as yet unclassified' }
DragonStateAttribute >> defaultState [

	^ defaultState
]

{ #category : 'as yet unclassified' }
DragonStateAttribute >> defaultState: aSymbolOrTypedAttribute [

	defaultState := aSymbolOrTypedAttribute
]

{ #category : 'as yet unclassified' }
DragonStateAttribute >> if: aBlockOrSymbol stateIs: aSymbolOrDragonAttribute [

	self states at: aBlockOrSymbol put: aSymbolOrDragonAttribute
]

{ #category : 'as yet unclassified' }
DragonStateAttribute >> initialize [ 

	super initialize.
	states := Dictionary new
]

{ #category : 'as yet unclassified' }
DragonStateAttribute >> relationsFor: anObject [

	self states keysAndValuesDo: [ :key :value |
			| isState |
			isState := key isBlock
				           ifTrue: [ key value: anObject ]
				           ifFalse: [ anObject perform: key ].
			isState ifTrue: [
					value isSymbol ifTrue: [
							^ { (DragonRelation new
								   source: anObject;
								   dragonAttribute: self;
								   target: (anObject perform: value)) } ].
					^ value relationsFor: anObject ] ].
	self defaultState isSymbol ifTrue: [
			^ { (DragonRelation new
				   source: anObject;
				   dragonAttribute: self;
				   target: (anObject perform: self defaultState)) } ].

	^ self defaultState relationsFor: anObject
]

{ #category : 'as yet unclassified' }
DragonStateAttribute >> states [

	^ states
]

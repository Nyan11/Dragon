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
DragonStateAttribute >> dragonEquals: aDragonAttribute [

	aDragonAttribute isState ifFalse: [ ^ false ].
	^ self states values includesAll: aDragonAttribute states values
]

{ #category : 'as yet unclassified' }
DragonStateAttribute >> if: arg1 stateIs: arg2 [

	self states at: arg1 put: arg2
]

{ #category : 'as yet unclassified' }
DragonStateAttribute >> initialize [ 

	super initialize.
	states := Dictionary new
]

{ #category : 'as yet unclassified' }
DragonStateAttribute >> internalStatesFor: anObject [

	| defaultStateConditionResult |
	defaultStateConditionResult := self defaultState isBlock
		                               ifTrue: [
		                               self defaultState
			                               valueWithPossibleArgument: anObject ]
		                               ifFalse: [
		                               anObject perform:
			                               self defaultState asSymbol ].

	defaultStateConditionResult ifTrue: [ ^ {  } ].

	self states keysAndValuesDo: [ :condition :setterForState |
			| conditionResult |
			conditionResult := condition isBlock
				                   ifTrue: [
				                   condition valueWithPossibleArgument: anObject ]
				                   ifFalse: [
				                   anObject perform: condition asSymbol ].
			conditionResult ifTrue: [
					^ { (DragonInternalState new
						   target: anObject;
						   dragonAttribute: self;
						   setterForState: setterForState;
						   yourself) } ] ].
	^ {  }
]

{ #category : 'testing' }
DragonStateAttribute >> isState [

	^ true
]

{ #category : 'as yet unclassified' }
DragonStateAttribute >> relationsFor: anObject [

	^ {  }
]

{ #category : 'as yet unclassified' }
DragonStateAttribute >> states [

	^ states
]

{ #category : 'as yet unclassified' }
DragonStateAttribute >> verifyObjectIsDefault: anObject [

	self defaultState ifNil: [ ^ false ].
	self defaultState isBlock ifTrue: [
		^ self defaultState valueWithArguments: anObject ].
	^ anObject perform: self defaultState
]

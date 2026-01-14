Class {
	#name : 'OtCStateAttribute',
	#superclass : 'OtCAbstractAttribute',
	#instVars : [
		'states',
		'defaultState'
	],
	#category : 'ObjectsToCode-Description',
	#package : 'ObjectsToCode',
	#tag : 'Description'
}

{ #category : 'as yet unclassified' }
OtCStateAttribute >> defaultState [

	^ defaultState
]

{ #category : 'as yet unclassified' }
OtCStateAttribute >> defaultState: aSymbolOrTypedAttribute [

	defaultState := aSymbolOrTypedAttribute
]

{ #category : 'as yet unclassified' }
OtCStateAttribute >> if: arg1 stateIs: arg2 [

	self states at: arg1 put: arg2
]

{ #category : 'as yet unclassified' }
OtCStateAttribute >> initialize [ 

	super initialize.
	states := Dictionary new
]

{ #category : 'as yet unclassified' }
OtCStateAttribute >> internalStatesFor: anObject [

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
					^ { (OtCInternalState new
						   target: anObject;
						   attribute: self;
						   setterForState: setterForState;
						   yourself) } ] ].
	^ {  }
]

{ #category : 'testing' }
OtCStateAttribute >> isState [

	^ true
]

{ #category : 'as yet unclassified' }
OtCStateAttribute >> otcEquals: aDragonAttribute [

	aDragonAttribute isState ifFalse: [ ^ false ].
	^ self states values includesAll: aDragonAttribute states values
]

{ #category : 'as yet unclassified' }
OtCStateAttribute >> relationsFor: anObject [

	^ {  }
]

{ #category : 'as yet unclassified' }
OtCStateAttribute >> states [

	^ states
]

{ #category : 'as yet unclassified' }
OtCStateAttribute >> verifyObjectIsDefault: anObject [

	self defaultState ifNil: [ ^ false ].
	self defaultState isBlock ifTrue: [
		^ self defaultState valueWithArguments: anObject ].
	^ anObject perform: self defaultState
]

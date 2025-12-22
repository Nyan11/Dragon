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
DragonStateAttribute >> if: arg1 stateIs: arg2 [

	self states at: arg1 put: arg2
]

{ #category : 'as yet unclassified' }
DragonStateAttribute >> initialize [ 

	super initialize.
	states := Dictionary new
]

{ #category : 'as yet unclassified' }
DragonStateAttribute >> relationsFor: arg1 [

	| tmp1 |
	self states keysAndValuesDo: [ :arg2 :arg3 |
			| tmp2 tmp3 |
			tmp2 := arg2 isBlock
				        ifTrue: [ arg2 value: arg1 ]
				        ifFalse: [ arg1 perform: arg2 ].
			tmp2 ifTrue: [
					arg3 isSymbol ifTrue: [
							tmp3 := DragonRelation new.
							tmp3
								source: arg1;
								dragonAttribute: self.
							^ { (tmp3 target: (arg1 perform: arg3)) } ].
					nil.
					^ arg3 relationsFor: arg1 ] ].
	self defaultState isSymbol ifTrue: [
			tmp1 := DragonRelation new.
			tmp1
				source: arg1;
				dragonAttribute: self.
			^ { (tmp1 target: (arg1 perform: self defaultState)) } ].
	nil.
	^ self defaultState relationsFor: arg1
]

{ #category : 'as yet unclassified' }
DragonStateAttribute >> states [

	^ states
]

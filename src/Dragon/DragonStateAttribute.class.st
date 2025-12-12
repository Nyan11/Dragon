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
DragonStateAttribute >> if: aBlockOrSymbol stateIs: aSymbolOrTypedAttribute [

	self states at: aBlockOrSymbol put: aSymbolOrTypedAttribute
]

{ #category : 'as yet unclassified' }
DragonStateAttribute >> initialize [ 

	super initialize.
	states := Dictionary new
]

{ #category : 'as yet unclassified' }
DragonStateAttribute >> states [

	^ states
]

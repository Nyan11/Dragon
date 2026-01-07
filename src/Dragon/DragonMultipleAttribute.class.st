Class {
	#name : 'DragonMultipleAttribute',
	#superclass : 'DragonAbstractTypedAttribute',
	#instVars : [
		'getterForAll',
		'setterForOne'
	],
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'as yet unclassified' }
DragonMultipleAttribute >> dragonEquals: aDragonAttribute [

	aDragonAttribute isMultiple ifFalse: [ ^false ].
	^ self setterForOne = aDragonAttribute setterForOne
]

{ #category : 'accessing' }
DragonMultipleAttribute >> getterForAll [

	^ getterForAll
]

{ #category : 'accessing' }
DragonMultipleAttribute >> getterForAll: anObject [

	getterForAll := anObject
]

{ #category : 'testing' }
DragonMultipleAttribute >> isMultiple [

	^ true
]

{ #category : 'as yet unclassified' }
DragonMultipleAttribute >> relationsFor: anObject [

	| elements |
	elements := self getterForAll isBlock
		            ifTrue: [ self getterForAll value: anObject ]
		            ifFalse: [ anObject perform: self getterForAll ].
	^ elements collectWithIndex: [ :element :index |
			  DragonRelation new
				  source: anObject;
				  index: index;
				  dragonAttribute: self;
				  target: element;
				  yourself ]
]

{ #category : 'accessing' }
DragonMultipleAttribute >> setter [

	^ setterForOne
]

{ #category : 'accessing' }
DragonMultipleAttribute >> setterForOne [

	^ setterForOne
]

{ #category : 'accessing' }
DragonMultipleAttribute >> setterForOne: aSymbol [

	setterForOne := aSymbol
]

Class {
	#name : 'DragonMultipleAttribute',
	#superclass : 'DragonAbstractTypedAttribute',
	#instVars : [
		'getterForAll',
		'addOne',
		'setterForOne'
	],
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'accessing' }
DragonMultipleAttribute >> addOne [

	^ addOne
]

{ #category : 'accessing' }
DragonMultipleAttribute >> addOne: anObject [

	addOne := anObject
]

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
	elements := self getterForAll isBlock ifTrue: [ self getterForAll value: anObject ] ifFalse: [ anObject perform: self getterForAll].
	^ elements collect: [ :element |
			  DragonRelation new
				  source: anObject;
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

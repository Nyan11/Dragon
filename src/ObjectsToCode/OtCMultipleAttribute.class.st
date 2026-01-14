Class {
	#name : 'OtCMultipleAttribute',
	#superclass : 'OtCAbstractTypedAttribute',
	#instVars : [
		'getterForAll',
		'setterForOne'
	],
	#category : 'ObjectsToCode-Description',
	#package : 'ObjectsToCode',
	#tag : 'Description'
}

{ #category : 'accessing' }
OtCMultipleAttribute >> getterForAll [

	^ getterForAll
]

{ #category : 'accessing' }
OtCMultipleAttribute >> getterForAll: anObject [

	getterForAll := anObject
]

{ #category : 'testing' }
OtCMultipleAttribute >> isMultiple [

	^ true
]

{ #category : 'as yet unclassified' }
OtCMultipleAttribute >> otcEquals: aDragonAttribute [

	aDragonAttribute isMultiple ifFalse: [ ^false ].
	^ self setterForOne = aDragonAttribute setterForOne
]

{ #category : 'as yet unclassified' }
OtCMultipleAttribute >> relationsFor: anObject [

	| elements |
	elements := self getterForAll isBlock
		            ifTrue: [ self getterForAll value: anObject ]
		            ifFalse: [ anObject perform: self getterForAll ].
	^ elements collectWithIndex: [ :element :index |
			  OtCRelation new
				  source: anObject;
				  index: index;
				  attribute: self;
				  target: element;
				  yourself ]
]

{ #category : 'accessing' }
OtCMultipleAttribute >> setter [

	^ setterForOne
]

{ #category : 'accessing' }
OtCMultipleAttribute >> setterForOne [

	^ setterForOne
]

{ #category : 'accessing' }
OtCMultipleAttribute >> setterForOne: aSymbol [

	setterForOne := aSymbol
]

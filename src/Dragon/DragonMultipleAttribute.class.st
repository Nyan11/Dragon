Class {
	#name : 'DragonMultipleAttribute',
	#superclass : 'DragonAbstractTypedAttribute',
	#instVars : [
		'getterForAll',
		'addOne'
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

	^ (anObject perform: self getterForAll) collect: [ :each |
			  DragonRelation new
				  source: anObject;
				  dragonAttribute: self;
				  target: each;
				  yourself ]
]

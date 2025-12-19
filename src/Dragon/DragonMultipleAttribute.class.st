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
DragonMultipleAttribute >> relationsFor: arg1 [

	^ (arg1 perform: self getterForAll) collect: [ :arg2 |
			  | tmp2 |
			  tmp2 := DragonRelation new.
			  tmp2
				  source: arg1;
				  dragonAttribute: self;
				  target: arg2;
				  yourself ]
]

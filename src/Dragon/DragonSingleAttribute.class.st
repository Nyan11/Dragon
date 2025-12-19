Class {
	#name : 'DragonSingleAttribute',
	#superclass : 'DragonAbstractTypedAttribute',
	#instVars : [
		'getter',
		'setter'
	],
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'accessing' }
DragonSingleAttribute >> getter [

	^ getter
]

{ #category : 'accessing' }
DragonSingleAttribute >> getter: anObject [

	getter := anObject
]

{ #category : 'testing' }
DragonSingleAttribute >> isMultiple [

	^ false
]

{ #category : 'as yet unclassified' }
DragonSingleAttribute >> relationsFor: arg1 [

	| tmp2 |
	tmp2 := DragonRelation new.
	tmp2
		source: arg1;
		dragonAttribute: self;
		target: (arg1 perform: self getter).
	^ { tmp2 yourself }
]

{ #category : 'accessing' }
DragonSingleAttribute >> setter [

	^ setter
]

{ #category : 'accessing' }
DragonSingleAttribute >> setter: anObject [

	setter := anObject
]

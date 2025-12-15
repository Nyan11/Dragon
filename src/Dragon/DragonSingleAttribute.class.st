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
DragonSingleAttribute >> relationsFor: anObject [

	^ {DragonRelation new
	source: anObject;
	dragonAttribute: self;
	target: (anObject perform: self getter);
	yourself}
]

{ #category : 'accessing' }
DragonSingleAttribute >> setter [

	^ setter
]

{ #category : 'accessing' }
DragonSingleAttribute >> setter: anObject [

	setter := anObject
]

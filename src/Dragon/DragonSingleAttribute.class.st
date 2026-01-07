Class {
	#name : 'DragonSingleAttribute',
	#superclass : 'DragonAbstractTypedAttribute',
	#instVars : [
		'getter',
		'setter',
		'defaultValue'
	],
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'accessing' }
DragonSingleAttribute >> defaultValue [

	^ defaultValue
]

{ #category : 'accessing' }
DragonSingleAttribute >> defaultValue: anObject [

	defaultValue := anObject
]

{ #category : 'as yet unclassified' }
DragonSingleAttribute >> dragonEquals: aDragonAttribute [

	aDragonAttribute isSingle ifFalse: [ ^false ].
	^ self setter = aDragonAttribute setter
]

{ #category : 'accessing' }
DragonSingleAttribute >> getter [

	^ getter
]

{ #category : 'accessing' }
DragonSingleAttribute >> getter: anObject [

	getter := anObject.
	self setter ifNil: [ self setter: anObject asMutator ]
]

{ #category : 'accessing' }
DragonSingleAttribute >> initialize [

	super initialize.
	defaultValue := nil
]

{ #category : 'as yet unclassified' }
DragonSingleAttribute >> relationsFor: anObject [

	^ { (DragonRelation new
		   source: anObject;
		   index: 1;
		   dragonAttribute: self;
		   target: (anObject perform: self getter);
		   yourself) }
]

{ #category : 'accessing' }
DragonSingleAttribute >> setter [

	^ setter
]

{ #category : 'accessing' }
DragonSingleAttribute >> setter: anObject [

	setter := anObject
]

{ #category : 'as yet unclassified' }
DragonSingleAttribute >> verifyObjectIsDefault: anObject [

	^ self defaultValue =  anObject
]

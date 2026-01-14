Class {
	#name : 'OtCSingleAttribute',
	#superclass : 'OtCAbstractTypedAttribute',
	#instVars : [
		'getter',
		'setter',
		'defaultValue'
	],
	#category : 'ObjectsToCode-Description',
	#package : 'ObjectsToCode',
	#tag : 'Description'
}

{ #category : 'accessing' }
OtCSingleAttribute >> defaultValue [

	^ defaultValue
]

{ #category : 'accessing' }
OtCSingleAttribute >> defaultValue: anObject [

	defaultValue := anObject
]

{ #category : 'accessing' }
OtCSingleAttribute >> getter [

	^ getter
]

{ #category : 'accessing' }
OtCSingleAttribute >> getter: anObject [

	getter := anObject.
	self setter ifNil: [ self setter: anObject asMutator ]
]

{ #category : 'accessing' }
OtCSingleAttribute >> initialize [

	super initialize.
	defaultValue := nil
]

{ #category : 'as yet unclassified' }
OtCSingleAttribute >> otcEquals: aDragonAttribute [

	aDragonAttribute isSingle ifFalse: [ ^false ].
	^ self setter = aDragonAttribute setter
]

{ #category : 'as yet unclassified' }
OtCSingleAttribute >> relationsFor: anObject [

	^ { (OtCRelation new
		   source: anObject;
		   index: 1;
		   attribute: self;
		   target: (anObject perform: self getter);
		   yourself) }
]

{ #category : 'accessing' }
OtCSingleAttribute >> setter [

	^ setter
]

{ #category : 'accessing' }
OtCSingleAttribute >> setter: anObject [

	setter := anObject
]

{ #category : 'as yet unclassified' }
OtCSingleAttribute >> verifyObjectIsDefault: anObject [

	^ self defaultValue =  anObject
]

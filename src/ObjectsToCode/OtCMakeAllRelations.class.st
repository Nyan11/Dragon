Class {
	#name : 'OtCMakeAllRelations',
	#superclass : 'OtCSerializationStep',
	#instVars : [
		'rootObject',
		'relations'
	],
	#category : 'ObjectsToCode-Serialization',
	#package : 'ObjectsToCode',
	#tag : 'Serialization'
}

{ #category : 'building' }
OtCMakeAllRelations >> build [

	self rootObject otcMetaRelations do: [ :relation |
		self registerRelation: relation ]
]

{ #category : 'initialization' }
OtCMakeAllRelations >> initialize [

	super initialize.
	relations := OrderedCollection new.
]

{ #category : 'accessing' }
OtCMakeAllRelations >> registerRelation: aDragonRelation [

	(self shouldRegisterThisRelation: aDragonRelation) ifFalse: [ ^ self ].
	self relations add: aDragonRelation.
	aDragonRelation target otcMetaRelations do: [ :relation |
		self registerRelation: relation
	]
]

{ #category : 'accessing' }
OtCMakeAllRelations >> relationAlreadyExists: aDragonRelation [

	^ self relations anySatisfy: [ :each |
		  each otcEquals: aDragonRelation ]
]

{ #category : 'accessing' }
OtCMakeAllRelations >> relations [

	^ relations
]

{ #category : 'accessing' }
OtCMakeAllRelations >> rootObject [

	^ rootObject
]

{ #category : 'accessing' }
OtCMakeAllRelations >> rootObject: anObject [

	rootObject := anObject
]

{ #category : 'accessing' }
OtCMakeAllRelations >> shouldRegisterThisRelation: aDragonRelation [

	(self relationAlreadyExists: aDragonRelation) ifTrue: [ ^ false ].
	(aDragonRelation attribute verifyObjectIsDefault:
		 aDragonRelation target) ifTrue: [ ^ false ].
	^ true
]

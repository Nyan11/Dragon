Class {
	#name : 'DragonMakeAllRelations',
	#superclass : 'DragonSerializationStep',
	#instVars : [
		'rootObject',
		'relations'
	],
	#category : 'Dragon-Serialization',
	#package : 'Dragon',
	#tag : 'Serialization'
}

{ #category : 'building' }
DragonMakeAllRelations >> build [

	self rootObject dragonMetaRelations do: [ :relation |
		self registerRelation: relation ]
]

{ #category : 'initialization' }
DragonMakeAllRelations >> initialize [

	super initialize.
	relations := OrderedCollection new.
]

{ #category : 'accessing' }
DragonMakeAllRelations >> registerRelation: aDragonRelation [

		(self relationAlreadyExists: aDragonRelation) ifTrue: [ ^ self ].
	self relations add: aDragonRelation.
	aDragonRelation target dragonMetaRelations do: [ :relation |
		self registerRelation: relation ]
]

{ #category : 'accessing' }
DragonMakeAllRelations >> relationAlreadyExists: aDragonRelation [

	^ self relations anySatisfy: [ :each |
		  each isSimilarTo: aDragonRelation ]
]

{ #category : 'accessing' }
DragonMakeAllRelations >> relations [

	^ relations
]

{ #category : 'accessing' }
DragonMakeAllRelations >> rootObject [

	^ rootObject
]

{ #category : 'accessing' }
DragonMakeAllRelations >> rootObject: anObject [

	rootObject := anObject
]

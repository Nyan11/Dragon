Class {
	#name : 'DragonSeparateRelations',
	#superclass : 'DragonSerializationStep',
	#instVars : [
		'relations',
		'sourcesDictionary',
		'targetsDictionary'
	],
	#category : 'Dragon-Serialization',
	#package : 'Dragon',
	#tag : 'Serialization'
}

{ #category : 'building' }
DragonSeparateRelations >> build [

	self relations do: [ :relation |
			(self targetsDictionary keys anySatisfy: [ :each |
					 | bool |
					 bool := each dragonEquals: relation target.
					 bool ifTrue: [
							 self targetsDictionary
								 at: each
								 ifPresent: [ :col | col add: relation ].
							  ]. bool ]) ifFalse: [
					self targetsDictionary
						at: relation target
						put: (OrderedCollection with: relation) ].

			(self sourcesDictionary keys anySatisfy: [ :each |
					 | bool |
					 bool := each dragonEquals: relation source.
					 bool ifTrue: [
							 self sourcesDictionary
								 at: each
								 ifPresent: [ :col | col add: relation ] ].
					 bool ]) ifFalse: [
					self sourcesDictionary
						at: relation source
						put: (OrderedCollection with: relation) ] ]
]

{ #category : 'initialization' }
DragonSeparateRelations >> initialize [

	super initialize.
	sourcesDictionary := Dictionary new.
	targetsDictionary := Dictionary new
]

{ #category : 'accessing' }
DragonSeparateRelations >> relations [

	^ relations
]

{ #category : 'accessing' }
DragonSeparateRelations >> relations: anObject [

	relations := anObject
]

{ #category : 'accessing' }
DragonSeparateRelations >> sourcesDictionary [

	^ sourcesDictionary
]

{ #category : 'accessing' }
DragonSeparateRelations >> targetsDictionary [

	^ targetsDictionary
]

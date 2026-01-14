Class {
	#name : 'OtCSeparateRelations',
	#superclass : 'OtCSerializationStep',
	#instVars : [
		'relations',
		'sourcesDictionary',
		'targetsDictionary'
	],
	#category : 'ObjectsToCode-Serialization',
	#package : 'ObjectsToCode',
	#tag : 'Serialization'
}

{ #category : 'building' }
OtCSeparateRelations >> build [

	self relations do: [ :relation |
			(self targetsDictionary keys anySatisfy: [ :each |
					 | bool |
					 bool := each otcEquals: relation target.
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
					 bool := each otcEquals: relation source.
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
OtCSeparateRelations >> initialize [

	super initialize.
	sourcesDictionary := OrderedDictionary new.
	targetsDictionary := OrderedDictionary new
]

{ #category : 'accessing' }
OtCSeparateRelations >> relations [

	^ relations
]

{ #category : 'accessing' }
OtCSeparateRelations >> relations: anObject [

	relations := anObject
]

{ #category : 'accessing' }
OtCSeparateRelations >> sourcesDictionary [

	^ sourcesDictionary
]

{ #category : 'accessing' }
OtCSeparateRelations >> targetsDictionary [

	^ targetsDictionary
]

Class {
	#name : 'DragonNamedReferences',
	#superclass : 'DragonSerializationStep',
	#instVars : [
		'multiReferences',
		'referencesAndNamesDictionary'
	],
	#category : 'Dragon-Serialization',
	#package : 'Dragon',
	#tag : 'Serialization'
}

{ #category : 'building' }
DragonNamedReferences >> build [

	self buildNameBasedOnClass.
	self resolveConflicts
]

{ #category : 'building' }
DragonNamedReferences >> buildNameBasedOnClass [

	self multiReferences do: [ :ref |
		self referencesAndNamesDictionary
			at: ref
			put: (self nameForReference: ref) ]
]

{ #category : 'initialization' }
DragonNamedReferences >> initialize [

	super initialize.
	referencesAndNamesDictionary := OrderedDictionary new
]

{ #category : 'accessing' }
DragonNamedReferences >> multiReferences [

	^ multiReferences
]

{ #category : 'accessing' }
DragonNamedReferences >> multiReferences: anObject [

	multiReferences := anObject
]

{ #category : 'building' }
DragonNamedReferences >> nameForReference: aReference [

	| withFirstCapitalized name |
	withFirstCapitalized := aReference object className asCamelCase.
	name := withFirstCapitalized first asLowercase asString
	        , withFirstCapitalized allButFirst.

	^ name
]

{ #category : 'accessing' }
DragonNamedReferences >> referencesAndNamesDictionary [

	^ referencesAndNamesDictionary
]

{ #category : 'building' }
DragonNamedReferences >> resolveConflicts [

	| potentialConflicts realConflicts |
	potentialConflicts := Dictionary new.
	self referencesAndNamesDictionary keysAndValuesDo: [ :ref :name |
			potentialConflicts
				at: name
				ifPresent: [ :col | col add: ref ]
				ifAbsentPut: [ OrderedCollection with: ref ] ].
	realConflicts := potentialConflicts associations select: [ :asso |
		                 asso value size > 1 ].
	realConflicts do: [ :asso |
			| name refs counter |
			counter := 1.
			name := asso key.
			refs := asso value.
			refs do: [ :each |
					self referencesAndNamesDictionary
						at: each
						put: name , counter printString.
					counter := counter + 1 ] ]
]

Class {
	#name : 'OtCNamedReferences',
	#superclass : 'OtCSerializationStep',
	#instVars : [
		'multiReferences',
		'referencesAndNamesDictionary'
	],
	#category : 'ObjectsToCode-Serialization',
	#package : 'ObjectsToCode',
	#tag : 'Serialization'
}

{ #category : 'building' }
OtCNamedReferences >> build [

	self buildNameBasedOnClass.
	self resolveConflicts
]

{ #category : 'building' }
OtCNamedReferences >> buildNameBasedOnClass [

	self multiReferences do: [ :ref |
		self referencesAndNamesDictionary
			at: ref
			put: (self nameForReference: ref) ]
]

{ #category : 'initialization' }
OtCNamedReferences >> initialize [

	super initialize.
	referencesAndNamesDictionary := OrderedDictionary new
]

{ #category : 'accessing' }
OtCNamedReferences >> multiReferences [

	^ multiReferences
]

{ #category : 'accessing' }
OtCNamedReferences >> multiReferences: anObject [

	multiReferences := anObject
]

{ #category : 'building' }
OtCNamedReferences >> nameForReference: aReference [

	| withFirstCapitalized name |
	withFirstCapitalized := aReference object className asCamelCase.
	name := withFirstCapitalized first asLowercase asString
	        , withFirstCapitalized allButFirst.

	^ name
]

{ #category : 'accessing' }
OtCNamedReferences >> referencesAndNamesDictionary [

	^ referencesAndNamesDictionary
]

{ #category : 'building' }
OtCNamedReferences >> resolveConflicts [

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

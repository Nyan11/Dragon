Class {
	#name : 'DragonNamedReferences',
	#superclass : 'DragonSerializationStep',
	#instVars : [
		'multiReferences',
		'nameReferenceDictionary'
	],
	#category : 'Dragon-Serialization',
	#package : 'Dragon',
	#tag : 'Serialization'
}

{ #category : 'building' }
DragonNamedReferences >> build [

	self multiReferences do: [ :ref |
		self nameReferenceDictionary
			at: ref
			put: (self nameForReference: ref) ]
]

{ #category : 'initialization' }
DragonNamedReferences >> initialize [

	super initialize.
	nameReferenceDictionary := Dictionary new
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
DragonNamedReferences >> nameReferenceDictionary [

	^ nameReferenceDictionary
]

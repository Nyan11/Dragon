Extension { #name : 'Object' }

{ #category : '*Dragon' }
Object >> dragonEquals: anObject [

	^ self = anObject
]

{ #category : '*Dragon' }
Object >> dragonMetaAttributes [

	^ (Pragma allNamed: #metaDragon from: self class to: Object)
		  collect: [ :p | p method valueWithReceiver: self ]
]

{ #category : '*Dragon' }
Object >> dragonMetaRelations [

	^ self dragonMetaAttributes flatCollect: [ :each |
		each relationsFor: self ]
]

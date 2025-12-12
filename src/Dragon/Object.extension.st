Extension { #name : 'Object' }

{ #category : '*Dragon' }
Object >> dragonMetaAttributes [

	^ (Pragma allNamed: #metaDragon from: self class to: Object)
		  collect: [ :p | p method valueWithReceiver: self ]
]

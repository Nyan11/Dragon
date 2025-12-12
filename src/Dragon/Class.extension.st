Extension { #name : 'Class' }

{ #category : '*Dragon' }
Class >> addDragonMetaAttribute: aDragonAttribute [

	aDragonAttribute compileDragonOn: self withClassification: '*Dragon'
	
]

{ #category : '*Dragon' }
Class >> dragonAttributes [

	<metaDragon>
	^ DragonMultipleAttribute new getterForAll: #dragonMetaAttributes; addOne: #addDragonMetaAttribute:; yourself 
]

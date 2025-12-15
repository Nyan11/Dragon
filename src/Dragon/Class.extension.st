Extension { #name : 'Class' }

{ #category : '*Dragon' }
Class >> addDragonMetaAttribute: aDragonAttribute [

	aDragonAttribute compileDragonOn: self withClassification: '*Dragon'
	
]

{ #category : '*Dragon' }
Class >> dragonAttributes [

	<metaDragon>
	^ DragonMultipleAttribute new
		  name: 'Attributes';
		  getterForAll: #dragonMetaAttributes;
		  addOne: #addDragonMetaAttribute:;
		  types: { DragonSingleAttribute . DragonMultipleAttribute . DragonStateAttribute };
		  yourself
]

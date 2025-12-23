Extension { #name : 'Collection' }

{ #category : '*Dragon' }
Collection >> dragonCollectionAttributes [

	<metaDragon>
	^ DragonMultipleAttribute new
		  name: 'Collection';
		  getterForAll: #yourself;
		  setterForOne: #add:;
		  types: { Object };
		  yourself
]

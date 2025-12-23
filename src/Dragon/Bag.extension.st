Extension { #name : 'Bag' }

{ #category : '*Dragon' }
Bag >> dragonBagAttributes [

	<metaDragon>
	^ DragonMultipleAttribute new
		  name: 'Bag';
		  getterForAll: [ :obj |
				  obj valuesAndCounts associations collect: [ :asso |
							  {
								  asso key.
								  asso value } ] ];
		  setterForOne: #add:withOccurrences:;
		  types: { Object };
		  yourself
]

{ #category : '*Dragon' }
Bag >> dragonCollectionAttributes [

	<metaDragon>
	^ DragonIgnoreAttribute new
		  name: 'Collection';
		  yourself
]

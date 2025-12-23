Extension { #name : 'Dictionary' }

{ #category : '*Dragon' }
Dictionary >> dragonCollectionAttributes [

	<metaDragon>
	^ DragonIgnoreAttribute new
		  name: 'Collection';
		  yourself
]

{ #category : '*Dragon' }
Dictionary >> dragonDictionaryAttributes [

	<metaDragon>
	^ DragonMultipleAttribute new
		  name: 'Dictionary';
		  getterForAll: [ :obj |
				  obj associations collect: [ :asso |
							  {
								  asso key.
								  asso value } ] ];
		  setterForOne: #at:put:;
		  types: { Object };
		  yourself
]

Extension { #name : 'Association' }

{ #category : '*Dragon' }
Association >> dragonAssociationKeyAttribute [

	<metaDragon>
	^ DragonSingleAttribute new
		  beForConstructor;
		  name: 'Key';
		  getter: #key;
		  types: { Object };
		  yourself
]

{ #category : '*Dragon' }
Association >> dragonAssociationValueAttribute [

	<metaDragon>
	^ DragonSingleAttribute new
		  beForConstructor;
		  name: 'Value';
		  getter: #value;
		  types: { Object };
		  yourself
]

{ #category : '*Dragon' }
Association >> dragonConstructor [

	^ DragonAssociationConstructor new
]

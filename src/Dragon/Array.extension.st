Extension { #name : 'Array' }

{ #category : '*Dragon' }
Array >> dragonArrayAttributes [

	<metaDragon>
	^ DragonMultipleAttribute new
	     beForConstructor;
		  name: 'Array';
		  getterForAll: #yourself;
		  types: { Object };
		  yourself
]

{ #category : '*Dragon' }
Array >> dragonCollectionAttributes [

	<metaDragon>
	^ DragonIgnoreAttribute new
		  name: 'Collection';
		  yourself
]

{ #category : '*Dragon' }
Array >> dragonConstructor [

	self isEmpty ifTrue: [ ^ super dragonConstructor ].
	^ DragonArrayConstructor new
]

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
Array >> dragonConstructor [

	self isEmpty ifTrue: [ ^ super dragonConstructor ].
	^ DragonArrayConstructor new
]

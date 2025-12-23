Extension { #name : 'String' }

{ #category : '*Dragon' }
String >> dragonCollectionAttributes [

	<metaDragon>
	^ DragonIgnoreAttribute new
		  name: 'Collection';
		  yourself
]

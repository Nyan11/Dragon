Extension { #name : 'Bag' }

{ #category : '*ObjectsToCode' }
Bag >> otcBagAttributes [

	<metaOtC>
	^ OtCMultipleAttribute new
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

{ #category : '*ObjectsToCode' }
Bag >> otcCollectionAttributes [

	<metaOtC>
	^ OtCIgnoreAttribute new
		  name: 'Collection';
		  yourself
]

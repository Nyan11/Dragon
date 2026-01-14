Extension { #name : 'Dictionary' }

{ #category : '*ObjectsToCode' }
Dictionary >> otcCollectionAttributes [

	<metaOtC>
	^ OtCIgnoreAttribute new
		  name: 'Collection';
		  yourself
]

{ #category : '*ObjectsToCode' }
Dictionary >> otcDictionaryAttributes [

	<metaOtC>
	^ OtCMultipleAttribute new
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

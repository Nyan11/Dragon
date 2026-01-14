Extension { #name : 'Collection' }

{ #category : '*ObjectsToCode' }
Collection >> otcCollectionAttributes [

	<metaOtC>
	^ OtCMultipleAttribute new
		  name: 'Collection';
		  getterForAll: #yourself;
		  setterForOne: #add:;
		  types: { Object };
		  yourself
]

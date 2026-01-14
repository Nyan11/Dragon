Extension { #name : 'String' }

{ #category : '*ObjectsToCode' }
String >> otcCollectionAttributes [

	<metaOtC>
	^ OtCIgnoreAttribute new
		  name: 'Collection';
		  yourself
]

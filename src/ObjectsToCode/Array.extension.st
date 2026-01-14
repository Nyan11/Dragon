Extension { #name : 'Array' }

{ #category : '*ObjectsToCode' }
Array >> otcArrayAttributes [

	<metaOtC>
	^ OtCMultipleAttribute new
		  beForConstructor;
		  name: 'Array';
		  getterForAll: #yourself;
		  types: { Object };
		  yourself
]

{ #category : '*ObjectsToCode' }
Array >> otcCollectionAttributes [

	<metaOtC>
	^ OtCIgnoreAttribute new
		  name: 'Collection';
		  yourself
]

{ #category : '*ObjectsToCode' }
Array >> otcConstructor [

	self isEmpty ifTrue: [ ^ super otcConstructor ].
	^ OtCArrayConstructor new
]

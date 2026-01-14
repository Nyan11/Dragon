Extension { #name : 'Association' }

{ #category : '*ObjectsToCode' }
Association >> otcAssociationKeyAttribute [

	<metaOtC>
	^ OtCSingleAttribute new
		  beForConstructor;
		  name: 'Key';
		  getter: #key;
		  types: { Object };
		  yourself
]

{ #category : '*ObjectsToCode' }
Association >> otcAssociationValueAttribute [

	<metaOtC>
	^ OtCSingleAttribute new
		  beForConstructor;
		  name: 'Value';
		  getter: #value;
		  types: { Object };
		  yourself
]

{ #category : '*ObjectsToCode' }
Association >> otcConstructor [

	^  OtCBinaryConstructor
					  firstGetter: #key
					  lastGetter: #value
					  binaryOperator: '->'
]

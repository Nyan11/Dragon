Extension { #name : 'Point' }

{ #category : '*ObjectsToCode' }
Point >> otcAssociationXAttribute [

	<metaOtC>
	^ OtCSingleAttribute new
		  beForConstructor;
		  name: 'X';
		  getter: #x;
		  types: { Number };
		  yourself
]

{ #category : '*ObjectsToCode' }
Point >> otcAssociationYAttribute [

	<metaOtC>
	^ OtCSingleAttribute new
		  beForConstructor;
		  name: 'Y';
		  getter: #y;
		  types: { Number };
		  yourself
]

{ #category : '*ObjectsToCode' }
Point >> otcConstructor [

	self x = self y
		ifTrue: [
		^ OtCUnaryConstructor getter: #x unaryOperator: 'asPoint' ]
		ifFalse: [
				^ OtCBinaryConstructor
					  firstGetter: #x
					  lastGetter: #y
					  binaryOperator: '@' ]
]

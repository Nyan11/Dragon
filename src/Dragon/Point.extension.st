Extension { #name : 'Point' }

{ #category : '*Dragon' }
Point >> dragonAssociationXAttribute [

	<metaDragon>
	^ DragonSingleAttribute new
		  beForConstructor;
		  name: 'X';
		  getter: #x;
		  types: { Number };
		  yourself
]

{ #category : '*Dragon' }
Point >> dragonAssociationYAttribute [

	<metaDragon>
	^ DragonSingleAttribute new
		  beForConstructor;
		  name: 'Y';
		  getter: #y;
		  types: { Number };
		  yourself
]

{ #category : '*Dragon' }
Point >> dragonConstructor [

	self x = self y
		ifTrue: [
		^ DragonUnaryConstructor getter: #x unaryOperator: 'asPoint' ]
		ifFalse: [
				^ DragonBinaryConstructor
					  firstGetter: #x
					  lastGetter: #y
					  binaryOperator: '@' ]
]

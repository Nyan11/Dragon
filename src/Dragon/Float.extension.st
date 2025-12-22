Extension { #name : 'Float' }

{ #category : '*Dragon' }
Float >> dragonConstructor [

	self isInfinite ifFalse: [ ^ super dragonConstructor ].
	self = Infinity ifTrue: [ ^ DragonLiteralConstructor new string: 'Float infinity' ].
	^ DragonLiteralConstructor new string: 'Float negativeInfinity'
]

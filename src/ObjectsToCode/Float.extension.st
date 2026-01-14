Extension { #name : 'Float' }

{ #category : '*ObjectsToCode' }
Float >> otcConstructor [

	self isInfinite ifFalse: [ ^ super otcConstructor ].
	self = Infinity ifTrue: [ ^ OtCLiteralConstructor new string: 'Float infinity' ].
	^ OtCLiteralConstructor new string: 'Float negativeInfinity'
]

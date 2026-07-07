Extension { #name : 'Object' }

{ #category : '*PrototypeLink-LNK' }
Object >> proliAnnotedBy: aRequirementReference forPov: aPoV [

	| verification dynamicLink |
	verification := aRequirementReference verifyBlock
		                valueWithEnoughArguments: {
				                self.
				                aPoV.
				                thisContext.
				                aRequirementReference }.

	dynamicLink := ProliDynamicLink new
		               requirementReference: aRequirementReference;
		               pointOfView: aPoV;
		               verified: verification;
		               object: self;
		               yourself.

	ProliDynamicLink announceNewLink: dynamicLink
]

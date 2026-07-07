Class {
	#name : 'ProliDynamicLink',
	#superclass : 'Object',
	#instVars : [
		'requirementReference',
		'pointOfView',
		'verified',
		'object'
	],
	#classInstVars : [
		'announcer'
	],
	#category : 'PrototypeLink-LNK',
	#package : 'PrototypeLink-LNK'
}

{ #category : 'as yet unclassified' }
ProliDynamicLink class >> announceNewLink: aProliDynamicLink [

	self announcer announce: (ProliDynamicLinkCreated new
			 dynamicLink: aProliDynamicLink;
			 yourself)
]

{ #category : 'accessing' }
ProliDynamicLink class >> announcer [

	^ announcer ifNil: [ announcer := Announcer new ].
]

{ #category : 'accessing' }
ProliDynamicLink >> object [

	^ object
]

{ #category : 'accessing' }
ProliDynamicLink >> object: anObject [

	object := anObject
]

{ #category : 'accessing' }
ProliDynamicLink >> pointOfView [

	^ pointOfView
]

{ #category : 'accessing' }
ProliDynamicLink >> pointOfView: anObject [

	pointOfView := anObject
]

{ #category : 'accessing' }
ProliDynamicLink >> requirementReference [

	^ requirementReference
]

{ #category : 'accessing' }
ProliDynamicLink >> requirementReference: anObject [

	requirementReference := anObject
]

{ #category : 'accessing' }
ProliDynamicLink >> verified [

	^ verified
]

{ #category : 'accessing' }
ProliDynamicLink >> verified: anObject [

	verified := anObject
]

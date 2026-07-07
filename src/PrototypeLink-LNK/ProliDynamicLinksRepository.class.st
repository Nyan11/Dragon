Class {
	#name : 'ProliDynamicLinksRepository',
	#superclass : 'Object',
	#instVars : [
		'dynamicLinks',
		'isWatching'
	],
	#category : 'PrototypeLink-LNK',
	#package : 'PrototypeLink-LNK'
}

{ #category : 'initialization' }
ProliDynamicLinksRepository >> addNewDynamicLink: aProliDynamicLinkCreated [

	self isWatching ifFalse: [ ^ self ].
	self dynamicLinks add: aProliDynamicLinkCreated dynamicLink
]

{ #category : 'as yet unclassified' }
ProliDynamicLinksRepository >> allLinksWithObject: anObject [

	self isWatching ifTrue: [ ^ self ].
	^ self dynamicLinks select: [ :each |
		  each object = anObject ]
]

{ #category : 'as yet unclassified' }
ProliDynamicLinksRepository >> allLinksWithRequirementReference: aRequirementReference [

	self isWatching ifTrue: [ ^ self ].
	^ self dynamicLinks select: [ :each |
		each requirementReference = aRequirementReference ]
]

{ #category : 'accessing' }
ProliDynamicLinksRepository >> dynamicLinks [

	^ dynamicLinks
]

{ #category : 'accessing' }
ProliDynamicLinksRepository >> dynamicLinks: anObject [

	dynamicLinks := anObject
]

{ #category : 'initialization' }
ProliDynamicLinksRepository >> initialize [

	super initialize.

	dynamicLinks := OrderedCollection new.
	isWatching := false.

	ProliDynamicLink announcer
		when: ProliDynamicLinkCreated
		send: #addNewDynamicLink:
		to: self
]

{ #category : 'accessing' }
ProliDynamicLinksRepository >> isWatching [

	^ isWatching
]

{ #category : 'submorphs - add/remove' }
ProliDynamicLinksRepository >> removeSubscription [

	self stopWatching.
	ProliDynamicLink announcer unsubscribe: self.
	
]

{ #category : 'as yet unclassified' }
ProliDynamicLinksRepository >> startWatching [

	isWatching := true
]

{ #category : 'as yet unclassified' }
ProliDynamicLinksRepository >> stopWatching [

	isWatching := false
]

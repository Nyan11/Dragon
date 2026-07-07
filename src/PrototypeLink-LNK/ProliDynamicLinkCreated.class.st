Class {
	#name : 'ProliDynamicLinkCreated',
	#superclass : 'Announcement',
	#instVars : [
		'dynamicLink'
	],
	#category : 'PrototypeLink-LNK',
	#package : 'PrototypeLink-LNK'
}

{ #category : 'accessing' }
ProliDynamicLinkCreated >> dynamicLink [

	^ dynamicLink
]

{ #category : 'accessing' }
ProliDynamicLinkCreated >> dynamicLink: anObject [

	dynamicLink := anObject
]

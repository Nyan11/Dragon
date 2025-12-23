Class {
	#name : 'DragonAssociationConstructor',
	#superclass : 'DragonConstructorWithReferences',
	#instVars : [
		'keyReference',
		'valueReference'
	],
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'adding' }
DragonAssociationConstructor >> addNextReference: aDragonReference withAttribute: aDragonAttribute [

	(aDragonAttribute getter = #value) ifTrue: [ self valueReference: aDragonReference ].
	self keyReference: aDragonReference

]

{ #category : 'accessing' }
DragonAssociationConstructor >> beginConstructorString [

	^ '('
]

{ #category : 'accessing' }
DragonAssociationConstructor >> endConstructorString [

	^ ')'
]

{ #category : 'testing' }
DragonAssociationConstructor >> hasReferences [

	^ true
]

{ #category : 'accessing' }
DragonAssociationConstructor >> keyReference [

	^ keyReference
]

{ #category : 'accessing' }
DragonAssociationConstructor >> keyReference: anObject [

	keyReference := anObject
]

{ #category : 'accessing' }
DragonAssociationConstructor >> references [

	^ { self keyReference . self valueReference }
]

{ #category : 'accessing' }
DragonAssociationConstructor >> separatorConstructorString [

	^ ')->('
]

{ #category : 'accessing' }
DragonAssociationConstructor >> valueReference [

	^ valueReference
]

{ #category : 'accessing' }
DragonAssociationConstructor >> valueReference: anObject [

	valueReference := anObject
]

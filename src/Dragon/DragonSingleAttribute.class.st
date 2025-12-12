Class {
	#name : 'DragonSingleAttribute',
	#superclass : 'DragonAbstractTypedAttribute',
	#instVars : [
		'getter',
		'setter'
	],
	#category : 'Dragon-Description',
	#package : 'Dragon',
	#tag : 'Description'
}

{ #category : 'accessing' }
DragonSingleAttribute >> getter [

	^ getter
]

{ #category : 'accessing' }
DragonSingleAttribute >> getter: anObject [

	getter := anObject
]

{ #category : 'testing' }
DragonSingleAttribute >> isMultiple [

	^ false
]

{ #category : 'accessing' }
DragonSingleAttribute >> setter [

	^ setter
]

{ #category : 'accessing' }
DragonSingleAttribute >> setter: anObject [

	setter := anObject
]

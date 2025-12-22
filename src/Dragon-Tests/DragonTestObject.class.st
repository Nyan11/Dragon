Class {
	#name : 'DragonTestObject',
	#superclass : 'Object',
	#instVars : [
		'name'
	],
	#category : 'Dragon-Tests',
	#package : 'Dragon-Tests'
}

{ #category : 'as yet unclassified' }
DragonTestObject >> dragonAttributes [

	<metaDragon>
	^ DragonSingleAttribute new
		  name: 'Name';
		  getter: #name;
		  setter: #name:;
		  types: { String };
		  yourself
]

{ #category : 'accessing' }
DragonTestObject >> name [

	^ name
]

{ #category : 'accessing' }
DragonTestObject >> name: anObject [

	name := anObject
]

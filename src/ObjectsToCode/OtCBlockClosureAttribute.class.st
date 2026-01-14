Class {
	#name : 'OtCBlockClosureAttribute',
	#superclass : 'OtCAbstractAttribute',
	#instVars : [
		'setter',
		'argumentGetterDictionary'
	],
	#category : 'ObjectsToCode-Description',
	#package : 'ObjectsToCode',
	#tag : 'Description'
}

{ #category : 'adding' }
OtCBlockClosureAttribute >> addArgumentNamed: anArgumentName forGetter: aGetter [

	self argumentGetterDictionary at: anArgumentName put: aGetter
]

{ #category : 'accessing' }
OtCBlockClosureAttribute >> argumentGetterDictionary [

	^ argumentGetterDictionary
]

{ #category : 'as yet unclassified' }
OtCBlockClosureAttribute >> initialize [

	super initialize.
	argumentGetterDictionary := Dictionary new.
]

{ #category : 'as yet unclassified' }
OtCBlockClosureAttribute >> internalStatesFor: anObject [

	^ {  }
]

{ #category : 'as yet unclassified' }
OtCBlockClosureAttribute >> relationsFor: anObject [

	| otCMachin |
	otCMachin := OtCMachin new
		             name: self argumentGetterDictionary keys;
		             references:
			             (self argumentGetterDictionary collect: [ :getter |
					              anObject perform: getter ]) yourself.
	^ { (OtCRelation new
		   source: anObject;
		   index: 1;
		   attribute: self;
		   target: otCMachin;
		   yourself) }
]

{ #category : 'accessing' }
OtCBlockClosureAttribute >> setter [

	^ setter
]

{ #category : 'accessing' }
OtCBlockClosureAttribute >> setter: anObject [

	setter := anObject
]

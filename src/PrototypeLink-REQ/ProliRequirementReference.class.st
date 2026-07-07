Class {
	#name : 'ProliRequirementReference',
	#superclass : 'Object',
	#instVars : [
		'source',
		'retreiveContent',
		'verificationProcess',
		'tags'
	],
	#classInstVars : [
		'requirementsDictionary'
	],
	#category : 'PrototypeLink-REQ',
	#package : 'PrototypeLink-REQ'
}

{ #category : 'instance creation' }
ProliRequirementReference class >> new [

	^ self newWithUniqueIdentifiant: thisContext sender method
]

{ #category : 'instance creation' }
ProliRequirementReference class >> newCapella: aDocument withId: anId [

	| requirement |
	requirement := self newWithUniqueIdentifiant:
		               thisContext sender method.
	requirement source: aDocument.
	requirement retreiveContent: [ :document |
			| capellaDocument idMacro |
			capellaDocument := XMLDOMParser parse:
				                   document asFileReference contents.
			idMacro := '//*[@id="<1s>"]' expandMacrosWith: anId.
			((XPath for: idMacro) in: capellaDocument) asArray first
				printString ].
	^ requirement
]

{ #category : 'instance creation' }
ProliRequirementReference class >> newWithUniqueIdentifiant: aUniqueIdentifiant [

	^ self requirementsDictionary at: aUniqueIdentifiant ifAbsentPut: [
			  self
				  basicNew;
				  initialize ]
]

{ #category : 'instance creation' }
ProliRequirementReference class >> requirementsDictionary [

	^ requirementsDictionary ifNil: [ requirementsDictionary := Dictionary new ].
]

{ #category : 'accessing' }
ProliRequirementReference >> content [

	^ self retreiveContent value: self source
]

{ #category : 'initialization' }
ProliRequirementReference >> initialize [

	super initialize.
	tags := {  }.
	verificationProcess := [ true ].
]

{ #category : 'accessing' }
ProliRequirementReference >> retreiveContent [

	^ retreiveContent
]

{ #category : 'accessing' }
ProliRequirementReference >> retreiveContent: anObject [

	retreiveContent := anObject
]

{ #category : 'accessing' }
ProliRequirementReference >> source [

	^ source
]

{ #category : 'accessing' }
ProliRequirementReference >> source: anObject [

	source := anObject
]

{ #category : 'accessing' }
ProliRequirementReference >> tags [

	^ tags
]

{ #category : 'accessing' }
ProliRequirementReference >> tags: anObject [

	tags := anObject
]

{ #category : 'accessing' }
ProliRequirementReference >> verificationProcess [

	^ verificationProcess
]

{ #category : 'accessing' }
ProliRequirementReference >> verificationProcess: anObject [

	verificationProcess := anObject
]

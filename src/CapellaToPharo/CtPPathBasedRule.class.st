Class {
	#name : 'CtPPathBasedRule',
	#superclass : 'CtPRule',
	#instVars : [
		'path',
		'collectionOfNamedIdPath'
	],
	#category : 'CapellaToPharo',
	#package : 'CapellaToPharo'
}

{ #category : 'accessing' }
CtPPathBasedRule class >> path: aString [

	^ self new
		  path: aString;
		  yourself
]

{ #category : 'comparing' }
CtPPathBasedRule >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ path = anObject path
]

{ #category : 'as yet unclassified' }
CtPPathBasedRule >> associates: aName withPath: aPath [

	self collectionOfNamedIdPath add: aName -> aPath
]

{ #category : 'as yet unclassified' }
CtPPathBasedRule >> capellaObjectForNode: aXMLNode inDocument: aXMLDocument [

	| associatedNodesDictionary |
	associatedNodesDictionary := Dictionary new.
	self collectionOfNamedIdPath do: [ :attributeAndpath |
			| idAttributes ids associatedNodes |
			idAttributes := (XPath for: attributeAndpath value) in: aXMLNode.
			ids := idAttributes flatCollect: [ :id |
					       | realIds |
					       realIds := '[0-9a-z]{8}-[0-9a-z]{4}-[0-9a-z]{4}-[0-9a-z]{4}-[0-9a-z]{12}'
						                  asRegex matchesIn: id value.
					       associatedNodes := (realIds flatCollect:
						                          [ :realId |
						                          (XPath for:
							                           '//*[@id="' , realId , '"]') in:
							                          aXMLDocument ]) asArray.
					       associatedNodesDictionary
						       at: attributeAndpath key
						       put: associatedNodes ] ].

	^ CtPCapellaObject new
		  xmlDocument: aXMLDocument;
		  xmlNode: aXMLNode;
		  rule: self;
		  associatedXmlNodes: associatedNodesDictionary;
		  yourself
]

{ #category : 'as yet unclassified' }
CtPPathBasedRule >> capellaObjectsForDocument: aXMLDocument [

	| nodes |
	nodes := {  }.
	self path ifNotNil: [
		nodes := (XPath for: self path) in: aXMLDocument ].
	^ nodes collect: [ :node |
		  self capellaObjectForNode: node inDocument: aXMLDocument ]
]

{ #category : 'accessing' }
CtPPathBasedRule >> collectionOfNamedIdPath [

	^ collectionOfNamedIdPath
]

{ #category : 'accessing' }
CtPPathBasedRule >> collectionOfNamedIdPath: anObject [

	collectionOfNamedIdPath := anObject
]

{ #category : 'comparing' }
CtPPathBasedRule >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ path hash
]

{ #category : 'initialization' }
CtPPathBasedRule >> initialize [

	super initialize.
	collectionOfNamedIdPath := OrderedCollection new
]

{ #category : 'accessing' }
CtPPathBasedRule >> path [

	^ path
]

{ #category : 'accessing' }
CtPPathBasedRule >> path: anObject [

	path := anObject
]

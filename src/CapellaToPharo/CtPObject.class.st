Class {
	#name : 'CtPObject',
	#superclass : 'Object',
	#instVars : [
		'xmlNode',
		'xmlDocument',
		'links',
		'parent',
		'children',
		'attributes',
		'id',
		'type',
		'name'
	],
	#category : 'CapellaToPharo',
	#package : 'CapellaToPharo'
}

{ #category : 'adding' }
CtPObject >> addAttributeName: aString value: aCtPObject [

	self attributes
		at: aString
		ifPresent: [ :col | col add: aCtPObject ]
		ifAbsentPut: [ OrderedCollection with: aCtPObject ].
	aCtPObject addLinkTo: self
]

{ #category : 'adding' }
CtPObject >> addChild: aCtPObject [

	self children add: aCtPObject.
	aCtPObject parent: self
]

{ #category : 'adding' }
CtPObject >> addLinkTo: aCtPObject [

	self links add: aCtPObject
]

{ #category : 'converting' }
CtPObject >> as: aClass [

	^ aClass new
		  capellaObject: self;
		  name: self name;
		  yourself
]

{ #category : 'converting' }
CtPObject >> asRSShapeForInspection [

	| shape |
	shape := RSBox model: self.
	shape @ RSPopup.
	shape draggable.

	shape color: Color gray.
	(self type beginsWith: 'org.polarsys.capella.core.data.oa') ifTrue: [
		shape color: Color orange ].
	(self type beginsWith: 'org.polarsys.capella.core.data.fa') ifTrue: [
		shape color: Color green ].
	(self type beginsWith: 'org.polarsys.capella.core.data.cx') ifTrue: [
		shape color: Color green ].
	(self type beginsWith: 'org.polarsys.capella.core.data.ctx') ifTrue: [
		shape color: Color green ].
	(self type beginsWith: 'org.polarsys.capella.core.data.la') ifTrue: [
		shape color: Color blue ].
	(self type beginsWith: 'org.polarsys.capella.core.data.pa') ifTrue: [
		shape color: Color yellow ].


	^ shape
]

{ #category : 'converting' }
CtPObject >> asSystemActors [

	^ self as: CtPSASystem
]

{ #category : 'converting' }
CtPObject >> asSystemFunctionnalExchanges [
	^ self as: CtPSAFunctionalExchange.
]

{ #category : 'converting' }
CtPObject >> asSystemFunctions [
	^ self as: CtPSAFunction .
]

{ #category : 'accessing' }
CtPObject >> attributes [
	^ attributes
]

{ #category : 'accessing' }
CtPObject >> children [
	^ children
]

{ #category : 'accessing' }
CtPObject >> id [

	^ id
]

{ #category : 'accessing' }
CtPObject >> id: anObject [

	id := anObject
]

{ #category : 'initialization' }
CtPObject >> initialize [

	super initialize.
	children := OrderedCollection new.
	attributes := Dictionary new.
	links := Set new.
]

{ #category : 'testing' }
CtPObject >> isSystemAnalysis [

	self xmlNode name = 'ownedArchitectures' ifTrue: [ ^ self type = 'org.polarsys.capella.core.data.ctx:SystemAnalysis' ].
	self parent ifNil: [ ^ false ].
	^ self parent isSystemAnalysis
]

{ #category : 'as yet unclassified' }
CtPObject >> linkedCapellaObjects [

	^ self children, self attributes values flattened
]

{ #category : 'accessing' }
CtPObject >> links [

	^ links
]

{ #category : 'accessing' }
CtPObject >> name [

	^ name
]

{ #category : 'accessing' }
CtPObject >> name: anObject [

	name := anObject
]

{ #category : 'accessing' }
CtPObject >> parent [

	^ parent
]

{ #category : 'accessing' }
CtPObject >> parent: anObject [

	parent := anObject
]

{ #category : 'printing' }
CtPObject >> printOn: aStream [

	super printOn: aStream.
	aStream << ' ('.
	self type printOn: aStream.
	self name ifNotEmpty: [
			aStream << ' , '.
			self name printOn: aStream ].
	aStream << ')'
]

{ #category : 'accessing' }
CtPObject >> type [

	^ type
]

{ #category : 'accessing' }
CtPObject >> type: anObject [

	type := anObject
]

{ #category : 'accessing' }
CtPObject >> xmlDocument [

	^ xmlDocument
]

{ #category : 'accessing' }
CtPObject >> xmlDocument: anObject [

	xmlDocument := anObject
]

{ #category : 'accessing' }
CtPObject >> xmlNode [

	^ xmlNode
]

{ #category : 'accessing' }
CtPObject >> xmlNode: anObject [

	xmlNode := anObject
]

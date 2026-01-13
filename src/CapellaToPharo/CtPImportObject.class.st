Class {
	#name : 'CtPImportObject',
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
	#category : 'CapellaToPharo-Import',
	#package : 'CapellaToPharo',
	#tag : 'Import'
}

{ #category : 'adding' }
CtPImportObject >> addAttributeName: aString value: aCtPObject [

	self attributes
		at: aString
		ifPresent: [ :col | col add: aCtPObject ]
		ifAbsentPut: [ OrderedCollection with: aCtPObject ].
	aCtPObject addLinkTo: self
]

{ #category : 'adding' }
CtPImportObject >> addChild: aCtPObject [

	self children add: aCtPObject.
	aCtPObject parent: self
]

{ #category : 'adding' }
CtPImportObject >> addLinkTo: aCtPObject [

	self links add: aCtPObject
]

{ #category : 'converting' }
CtPImportObject >> as: aClass [

	^ aClass new
		  capellaObject: self;
		  name: self name;
		  yourself
]

{ #category : 'converting' }
CtPImportObject >> asRSShapeForInspection [

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
CtPImportObject >> asSystemActors [

	^ self as: CtPSAActor
]

{ #category : 'converting' }
CtPImportObject >> asSystemFunctionnalExchanges [
	^ self as: CtPSAFunctionalExchange.
]

{ #category : 'converting' }
CtPImportObject >> asSystemFunctions [
	^ self as: CtPSAFunction .
]

{ #category : 'converting' }
CtPImportObject >> asSystemSystem [

	^ self as: CtPSASystem
]

{ #category : 'accessing' }
CtPImportObject >> attributes [
	^ attributes
]

{ #category : 'accessing' }
CtPImportObject >> children [
	^ children
]

{ #category : 'accessing' }
CtPImportObject >> id [

	^ id
]

{ #category : 'accessing' }
CtPImportObject >> id: anObject [

	id := anObject
]

{ #category : 'initialization' }
CtPImportObject >> initialize [

	super initialize.
	children := OrderedCollection new.
	attributes := Dictionary new.
	links := Set new.
]

{ #category : 'testing' }
CtPImportObject >> isSystemAnalysis [

	self xmlNode name = 'ownedArchitectures' ifTrue: [ ^ self type = 'org.polarsys.capella.core.data.ctx:SystemAnalysis' ].
	self parent ifNil: [ ^ false ].
	^ self parent isSystemAnalysis
]

{ #category : 'as yet unclassified' }
CtPImportObject >> linkedCapellaObjects [

	^ self children, self attributes values flattened
]

{ #category : 'accessing' }
CtPImportObject >> links [

	^ links
]

{ #category : 'accessing' }
CtPImportObject >> name [

	^ name
]

{ #category : 'accessing' }
CtPImportObject >> name: anObject [

	name := anObject
]

{ #category : 'accessing' }
CtPImportObject >> parent [

	^ parent
]

{ #category : 'accessing' }
CtPImportObject >> parent: anObject [

	parent := anObject
]

{ #category : 'printing' }
CtPImportObject >> printOn: aStream [

	super printOn: aStream.
	aStream << ' ('.
	self type printOn: aStream.
	self name ifNotEmpty: [
			aStream << ' , '.
			self name printOn: aStream ].
	aStream << ')'
]

{ #category : 'accessing' }
CtPImportObject >> type [

	^ type
]

{ #category : 'accessing' }
CtPImportObject >> type: anObject [

	type := anObject
]

{ #category : 'accessing' }
CtPImportObject >> xmlDocument [

	^ xmlDocument
]

{ #category : 'accessing' }
CtPImportObject >> xmlDocument: anObject [

	xmlDocument := anObject
]

{ #category : 'accessing' }
CtPImportObject >> xmlNode [

	^ xmlNode
]

{ #category : 'accessing' }
CtPImportObject >> xmlNode: anObject [

	xmlNode := anObject
]

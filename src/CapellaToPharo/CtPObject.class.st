Class {
	#name : 'CtPObject',
	#superclass : 'Object',
	#instVars : [
		'xmlNode',
		'xmlDocument',
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
	self attributes at: aString ifPresent: [:col |col add: aCtPObject] ifAbsentPut: [OrderedCollection with: aCtPObject].
]

{ #category : 'adding' }
CtPObject >> addChild: aCtPObject [

	self children add: aCtPObject.
	aCtPObject parent: self
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
	attributes := Dictionary new
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

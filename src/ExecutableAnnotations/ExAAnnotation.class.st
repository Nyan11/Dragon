Class {
	#name : 'ExAAnnotation',
	#superclass : 'Object',
	#instVars : [
		'linkedAnnotations',
		'privateMethod',
		'privateSenders',
		'validationBlock'
	],
	#classInstVars : [
		'cachedAnnotations'
	],
	#category : 'ExecutableAnnotations',
	#package : 'ExecutableAnnotations'
}

{ #category : 'as yet unclassified' }
ExAAnnotation class >> allAnnotationsNamed: aSymbol [

	^ (Pragma allNamed: #ExA:)
		  select: [ :each | each arguments first = aSymbol ]
		  thenCollect: [ :each |
				  | annotation |
				  annotation := each method valueWithReceiver:
					                each method methodClass instanceSide.
				  annotation ]
]

{ #category : 'accessing' }
ExAAnnotation class >> cachedAnnotations [

	cachedAnnotations ifNil: [ cachedAnnotations := Dictionary new ].
	^ cachedAnnotations
]

{ #category : 'instance creation' }
ExAAnnotation class >> new [

	| method |
	method := thisContext sender method.
	^ self cachedAnnotations
		  at: method
		  ifPresent: [ :ann | ^ ann ]
		  ifAbsentPut: [
				  | annotation |
				  annotation := super new.
				  annotation privateMethod: method.
				  annotation ]
]

{ #category : 'as yet unclassified' }
ExAAnnotation >> hasSenders [

	^ self privateSenders isNotEmpty
]

{ #category : 'initialization' }
ExAAnnotation >> initialize [

	super initialize.
	linkedAnnotations := {  }.
	privateSenders := {  }.
	validationBlock := [ :annoucement |
		                   self needSenders
			                   ifTrue: [
			                   self isEquivalentTo:
				                   annoucement executableAnnotation ]
			                   ifFalse: [ true ] ]
]

{ #category : 'testing' }
ExAAnnotation >> isEquivalentTo: anAnnotation [

	^ self class = anAnnotation class
]

{ #category : 'accessing' }
ExAAnnotation >> linkedAnnotations [

	^ linkedAnnotations
]

{ #category : 'accessing' }
ExAAnnotation >> linkedAnnotations: anObject [

	linkedAnnotations := anObject
]

{ #category : 'as yet unclassified' }
ExAAnnotation >> needSenders [

	^ self linkedAnnotations isEmpty and: [ self privateSenders isEmpty ]
]

{ #category : 'accessing' }
ExAAnnotation >> privateMethod [

	^ privateMethod
]

{ #category : 'accessing' }
ExAAnnotation >> privateMethod: anObject [

	| senders |
	privateMethod := anObject.
	senders := privateMethod senders.
	privateSenders := senders flatCollect: [ :method |
			                  method ast allChildren select: [ :each |
				                  self privateVerifySenderAST: each ] ]
]

{ #category : 'accessing' }
ExAAnnotation >> privateSenders [

	^ privateSenders
]

{ #category : 'accessing' }
ExAAnnotation >> privateVerifySenderAST: anASTNode [

	anASTNode isMessage ifFalse: [ ^ false ].
	anASTNode selector = privateMethod selector ifFalse: [ ^ false ].
	anASTNode parent isMessage ifFalse: [ ^ false ].
	anASTNode parent selector = #exa: ifFalse: [ ^ false ].
	anASTNode receiver isVariable ifFalse: [ ^ false ].
	anASTNode receiver name = privateMethod methodClass instanceSide name ifFalse: [ ^ false ].
	^ true
					                
]

{ #category : 'accessing' }
ExAAnnotation >> validationBlock [

	^ validationBlock
]

{ #category : 'accessing' }
ExAAnnotation >> validationBlock: anObject [

	validationBlock := anObject
]

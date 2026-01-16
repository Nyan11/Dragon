Class {
	#name : 'ExAAnnotation',
	#superclass : 'Object',
	#instVars : [
		'linkedAnnotations',
		'privateMethod',
		'privateSenders'
	],
	#category : 'ExecutableAnnotations',
	#package : 'ExecutableAnnotations'
}

{ #category : 'initialization' }
ExAAnnotation >> initialize [

	super initialize.
	linkedAnnotations := {  }.
	privateSenders := {  }
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

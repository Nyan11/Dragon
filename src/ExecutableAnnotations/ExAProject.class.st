Class {
	#name : 'ExAProject',
	#superclass : 'SpPresenter',
	#instVars : [
		'annotations',
		'projectSymbol',
		'table'
	],
	#category : 'ExecutableAnnotations',
	#package : 'ExecutableAnnotations'
}

{ #category : 'accessing' }
ExAProject >> annotations [

	^ annotations
]

{ #category : 'layout' }
ExAProject >> defaultLayout [

	^ SpBoxLayout newVertical
		  add: table;
		  yourself
]

{ #category : 'initialization' }
ExAProject >> initializePresenters [

	| name linked |
	name := SpStringTableColumn new
		        title: 'Name';
		        evaluated: [ :object | object privateMethod printString ];
		        beSortable;
		        yourself.

	linked := SpStringTableColumn new
		          title: 'Linked';
		          evaluated: [ :object |
			          object linkedAnnotations size printString ];
		          beSortable;
		          yourself.

	table := SpTablePresenter new
		         addColumn: name;
		         addColumn: linked;
		         yourself
]

{ #category : 'accessing' }
ExAProject >> projectSymbol [

	^ projectSymbol
]

{ #category : 'accessing' }
ExAProject >> projectSymbol: anObject [

	projectSymbol := anObject.
	self updateProject
]

{ #category : 'as yet unclassified' }
ExAProject >> updateProject [

	annotations := (Pragma allNamed: #ExA:)
		               select: [ :each |
		               each arguments first = self projectSymbol ]
		               thenCollect: [ :each |
				               | annotation |
				               annotation := each method valueWithReceiver:
					                             each method methodClass instanceSide.
				               annotation privateMethod: each method.
				               annotation ].
	table items: annotations
]

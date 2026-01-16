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

{ #category : 'initialization' }
ExAProject >> contextMenu [

	^ SpMenuPresenter new
		  addGroup: [ :group |
				  group addItem: [ :item |
							  item
								  name: 'Inspect project';
								  icon: (self iconNamed: #smallInspectIt);
								  action: [ self inspect ] ] ];
		  addGroup: [ :group |
				  group addItem: [ :item |
						  item
							  name: 'Inspect annotation';
							  icon: (self iconNamed: #smallInspectIt);
							  action: [ table selectedItem inspect ] ];
					addItem: [ :item |
						  item
							  name: 'Browse annotation';
							  icon: (self iconNamed: #nautilus);
							  action: [ table selectedItem privateMethod browse ] ] ];
		  yourself
]

{ #category : 'layout' }
ExAProject >> defaultLayout [

	^ SpBoxLayout newVertical
		  add: table;
		  yourself
]

{ #category : 'initialization' }
ExAProject >> initializePresenters [

	| name linked senders needSenders |
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
		          width: 40;
		          yourself.
	senders := SpStringTableColumn new
		           title: 'Senders';
		           evaluated: [ :object |
			           object privateSenders size printString ];
		           beSortable;
		           width: 40;
		           yourself.
	needSenders := SpStringTableColumn new
		               title: 'Senders';
		               evaluated: [ :object |
				               object needSenders
					               ifTrue: [ 'yes' ]
					               ifFalse: [ 'no' ] ];
		               displayColor: [ :object |
				               object needSenders
					               ifTrue: [ Color red ]
					               ifFalse: [ Color green ] ];
		               beSortable;
		               width: 40;
		               yourself.

	table := SpTablePresenter new
		         contextMenu: self contextMenu;
		         addColumn: name;
		         addColumn: linked;
		         addColumn: senders;
		         addColumn: needSenders;
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

{ #category : 'initialization' }
ExAProject >> updatePresenter [
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

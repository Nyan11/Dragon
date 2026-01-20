Class {
	#name : 'ExAProject',
	#superclass : 'SpPresenter',
	#instVars : [
		'projectSymbol',
		'table',
		'report'
	],
	#category : 'ExecutableAnnotations',
	#package : 'ExecutableAnnotations'
}

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
				  group
					  addItem: [ :item |
							  item
								  name: 'Inspect annotation';
								  icon: (self iconNamed: #smallInspectIt);
								  action: [ table selectedItem inspect ] ];
					  addItem: [ :item |
							  item
								  name: 'Browse annotation';
								  icon: (self iconNamed: #nautilus);
								  action: [ table selectedItem privateMethod browse ] ] ];
		  addGroup: [ :group |
				  group
					  addItem: [ :item |
							  item
								  name: 'Inspect associated Objects';
								  icon: (self iconNamed: #smallInspectIt);
								  action: [
									  (self report annotationsObjectsDictionary at:
											  table selectedItem) inspect ] ];
					  addItem: [ :item |
							  item
								  name: 'Inspect associated Graphical Objects';
								  icon: (self iconNamed: #image);
								  action: [
										  (self report annotationsGraphicalObjectsDictionary at:
												  table selectedItem) inspect ] ] ];
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

	| name linked senders needSenders isValid associatedObjects associatedGraphicalObjects highlightGraphical |
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
		               title: 'Need Senders';
		               evaluated: [ :object |
				               object hasSenders
					               ifTrue: [ 'yes' ]
					               ifFalse: [ 'no' ] ];
		               displayColor: [ :object |
				               object hasSenders
					               ifTrue: [ Color green ]
					               ifFalse: [
							               object needSenders
								               ifTrue: [ Color red ]
								               ifFalse: [ Color orange ] ] ];
		               beSortable;
		               width: 40;
		               yourself.
	isValid := SpStringTableColumn new
		           title: 'Validity';
		           evaluated: [ :object |
				           (self report isAnnotationAlreadyValid: object)
					           ifTrue: [ 'ok' ]
					           ifFalse: [ '' ] ];
		           beSortable;
		           width: 40;
		           yourself.
	associatedObjects := SpStringTableColumn new
		                     title: 'objects';
		                     evaluated: [ :object |
			                     (self report annotationsObjectsDictionary at:
					                      object) size printString ];
		                     beSortable;
		                     width: 40;
		                     yourself.
	associatedGraphicalObjects := SpStringTableColumn new
		                              title: 'graphics';
		                              evaluated: [ :object |
				                              (self report
					                               annotationsGraphicalObjectsDictionary
					                               at: object) size printString ];
		                              beSortable;
		                              width: 40;
		                              yourself.
	highlightGraphical := SpLinkTableColumn new
		                      title: 'highlight';
		                      evaluated: [ :annotation |
				                      (self report
					                       annotationsGraphicalObjectsDictionary at:
						                       annotation)
					                      ifEmpty: [ '' ]
					                      ifNotEmpty: [
							                      (self report isAnnotationHighlighted:
									                       annotation)
								                      ifTrue: [ 'hide' ]
								                      ifFalse: [ 'show' ] ] ];
		                      action: [ :annotation |
				                      (self report isAnnotationHighlighted:
						                       annotation)
					                      ifTrue: [
						                      self report removeHighlightFor: annotation ]
					                      ifFalse: [
						                      self report addHighlightFor: annotation ] ];
		                      width: 40;
		                      yourself.

	table := SpTablePresenter new
		         contextMenu: self contextMenu;
		         addColumn: name;
		         addColumn: linked;
		         addColumn: senders;
		         addColumn: needSenders;
		         addColumn: isValid;
		         addColumn: associatedObjects;
		         addColumn: associatedGraphicalObjects;
		         addColumn: highlightGraphical;
		         yourself
]

{ #category : 'accessing' }
ExAProject >> projectSymbol [

	^ projectSymbol
]

{ #category : 'accessing' }
ExAProject >> projectSymbol: anObject [

	projectSymbol := anObject.
	report := ExAReport new.
	report annotations: (ExAAnnotation allAnnotationsNamed: self projectSymbol).
	report startReporting.
	table items: report annotations
]

{ #category : 'accessing' }
ExAProject >> report [

	^ report
]

{ #category : 'accessing' }
ExAProject >> report: anObject [

	report := anObject
]

{ #category : 'initialization' }
ExAProject >> updatePresenter [
]

Class {
	#name : 'ExATrainExample',
	#superclass : 'Object',
	#instVars : [
		'isInStation',
		'userInterface',
		'crossing'
	],
	#category : 'ExecutableAnnotations-Example',
	#package : 'ExecutableAnnotations-Example'
}

{ #category : 'pyramid-serialized-bloc' }
ExATrainExample class >> blSpec [
	"This class has been generated using Pyramid.

	By: 
	2026-01-15 14:15:29"

	<pyStash>
	^ [ {(BlElement new
   addChildren: {(BlElement new
         addChildren: {(BlTextElement new
               text: (BlRopedText new
                     rope: (BlAttributeRope attributes: {(BlFontSizeAttribute new
                                 size: 24;
                                 yourself)} rope: (BlCollectionRope new
                                 collection: 'interdiction';
                                 yourself));
                     yourself);
               id: #autorisation_text;
               constraintsDo: [:constraints |  constraints horizontal fitContent.
                  constraints vertical fitContent.
                  constraints frame horizontal alignLeftAt: 0.1.
                  constraints frame vertical alignCenter ];
               yourself) . 
            (BlElement new
               id: #autorisation_dot;
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 1.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               geometry: BlEllipseGeometry new;
               constraintsDo: [:constraints |  constraints horizontal exact: 20.0.
                  constraints vertical exact: 20.0.
                  constraints frame horizontal alignRightAt: 0.1.
                  constraints frame vertical alignCenter ];
               yourself)};
         id: #autorisation;
         background: (BlPaintBackground new
               paint: (BlLinearGradientPaint new
                     start: 0 @ 0;
                     end: 0.0 @ 50.0;
                     stops: {(0.0 -> (Color r: 0.9726295210166178 g: 0.9726295210166178 b: 0.9726295210166178 alpha: 1.0)) . 
                        (1.0 -> (Color r: 0.9726295210166178 g: 0.9726295210166178 b: 0.9726295210166178 alpha: 0.4980392156862745))};
                     yourself);
               opacity: 1.0;
               yourself);
         geometry: (BlRoundedRectangleGeometry cornerRadius: 4);
         layout: BlFrameLayout new;
         constraintsDo: [:constraints |  constraints horizontal matchParent.
            constraints margin: (BlInsets all: 10.0) ];
         yourself) . 
      (BlElement new
         addChildren: {(BlTextElement new
               text: (BlRopedText new
                     rope: (BlAttributeRope attributes: {(BlFontSizeAttribute new
                                 size: 24;
                                 yourself)} rope: (BlCollectionRope new
                                 collection: 'stop';
                                 yourself));
                     yourself);
               id: #roule_text;
               constraintsDo: [:constraints |  constraints horizontal fitContent.
                  constraints vertical fitContent.
                  constraints frame horizontal alignLeftAt: 0.1.
                  constraints frame vertical alignCenter ];
               yourself) . 
            (BlElement new
               id: #roule_dot;
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 1.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               geometry: BlEllipseGeometry new;
               constraintsDo: [:constraints |  constraints horizontal exact: 20.0.
                  constraints vertical exact: 20.0.
                  constraints frame horizontal alignRightAt: 0.1.
                  constraints frame vertical alignCenter ];
               yourself)};
         id: #roule;
         background: (BlPaintBackground new
               paint: (BlLinearGradientPaint new
                     start: 0 @ 0;
                     end: 0.0 @ 50.0;
                     stops: {(0.0 -> (Color r: 0.9726295210166178 g: 0.9726295210166178 b: 0.9726295210166178 alpha: 1.0)) . 
                        (1.0 -> (Color r: 0.9726295210166178 g: 0.9726295210166178 b: 0.9726295210166178 alpha: 0.4980392156862745))};
                     yourself);
               opacity: 1.0;
               yourself);
         geometry: (BlRoundedRectangleGeometry cornerRadius: 4);
         layout: BlFrameLayout new;
         constraintsDo: [:constraints |  constraints horizontal matchParent.
            constraints margin: (BlInsets top: 0.0 right: 10.0 bottom: 10.0 left: 10.0) ];
         yourself)};
   id: #ui;
   background: (BlPaintBackground new
         paint: (BlColorPaint new
               color: (Color r: 0.6197458455522972 g: 0.6197458455522972 b: 0.6197458455522972 alpha: 1.0);
               yourself);
         opacity: 1.0;
         yourself);
   layout: BlFlowLayout vertical;
   constraintsDo: [:constraints |  constraints horizontal exact: 230.0.
      constraints vertical fitContent ];
   yourself)} ] value
]

{ #category : 'as yet unclassified' }
ExATrainExample >> allowCrossing [

	crossing := true.
	self autorisation_text text: 'autorisé' asRopedText.
	self autorisation_dot background: Color green
]

{ #category : 'as yet unclassified' }
ExATrainExample >> autorisationElement [

	^ userInterface childWithId: #autorisation
]

{ #category : 'as yet unclassified' }
ExATrainExample >> autorisation_dot [

	^ self autorisationElement childWithId: #autorisation_dot
]

{ #category : 'as yet unclassified' }
ExATrainExample >> autorisation_text [

	^ self autorisationElement childWithId: #autorisation_text
]

{ #category : 'accessing' }
ExATrainExample >> beInStation [

	isInStation := true.
	self roule_text text: 'stop' asRopedText.
	self roule_dot background: Color red
]

{ #category : 'as yet unclassified' }
ExATrainExample >> disallowCrossing [

	crossing := false.
	self autorisation_text text: 'interdiction' asRopedText.
	self autorisation_dot background: Color red
]

{ #category : 'initialization' }
ExATrainExample >> initialize [

	super initialize.
	isInStation := true.
	userInterface := self class blSpec first.

]

{ #category : 'accessing' }
ExATrainExample >> isInStation [

	^ isInStation
]

{ #category : 'accessing' }
ExATrainExample >> leaveStation [

	isInStation := false.
	self roule_text text: 'avance' asRopedText.
	self roule_dot background: Color green
]

{ #category : 'as yet unclassified' }
ExATrainExample >> rouleElement [

	^ userInterface childWithId: #roule
]

{ #category : 'as yet unclassified' }
ExATrainExample >> roule_dot [

	^ self rouleElement childWithId: #roule_dot
]

{ #category : 'as yet unclassified' }
ExATrainExample >> roule_text [

	^ self rouleElement childWithId: #roule_text
]

{ #category : 'accessing' }
ExATrainExample >> userInterface [ 

	^ userInterface 
]

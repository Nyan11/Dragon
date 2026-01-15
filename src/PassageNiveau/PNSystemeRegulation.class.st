Class {
	#name : 'PNSystemeRegulation',
	#superclass : 'Object',
	#instVars : [
		'voies',
		'tempsAbsolu',
		'voiturePasse',
		'userInterface'
	],
	#category : 'PassageNiveau-user-interface',
	#package : 'PassageNiveau',
	#tag : 'user-interface'
}

{ #category : 'pyramid-serialized-bloc' }
PNSystemeRegulation class >> ui_system [
	"This class has been generated using Pyramid.

	By: 
	2026-01-15 16:19:06"

	<pyStash>
	^ [ | toswitchbutton1 |
toswitchbutton1 := ToSwitchButton new.
{(BlElement new
   addChildren: {(BlElement new
         addChildren: {(ToLabel new
               text: (BlRopedText new
                     rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                                 paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                                 yourself)} rope: (BlCollectionRope new
                                 collection: '4:09:04.999 pm';
                                 yourself));
                     yourself);
               id: #temps;
               focusability: BlFocusability none;
               layout: BlLinearLayout horizontal;
               constraintsDo: [:constraints |  constraints horizontal fitContent.
                  constraints vertical fitContent.
                  constraints frame horizontal alignCenter.
                  constraints frame vertical alignCenter ];
               yourself) . 
            (toswitchbutton1
               middleElement: (ToLabel new
                     text: (BlRopedText new
                           rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                                       paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                                       yourself) . 
                                    (BlFontFamilyDefaultAttribute new
                                       name: 'Roboto';
                                       yourself) . 
                                    (BlFontSizeDefaultAttribute new
                                       size: 14.0;
                                       yourself)} rope: (BlCollectionRope new
                                       collection: 'Barrière ouverte (Train KO)';
                                       yourself));
                           yourself);
                     addStamp: #'parent-button' withValue: toswitchbutton1;
                     focusability: BlFocusability none;
                     layout: BlLinearLayout horizontal;
                     constraintsDo: [:constraints |  constraints horizontal fitContent.
                        constraints vertical fitContent.
                        constraints margin: (BlInsets top: 0.0 right: 8.0 bottom: 0.0 left: 8.0) ];
                     yourself);
               startElement: (ToSwitchIcon new
                     id: #switchIcon;
                     addStamp: #'parent-button' withValue: toswitchbutton1;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.14467253176930597 g: 0.15249266862170088 b: 0.20039100684261973 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     geometry: (BlRoundedRectangleGeometry cornerRadius: 10.0);
                     layout: BlBasicLayout uniqueInstance;
                     constraintsDo: [:constraints |  constraints horizontal exact: 32.0.
                        constraints vertical exact: 20.0 ];
                     yourself);
               id: #barriere;
               layout: BlLinearLayout horizontal;
               constraintsDo: [:constraints |  constraints horizontal fitContent.
                  constraints vertical fitContent.
                  constraints frame vertical alignCenter.
                  constraints margin: (BlInsets all: 10.0) ];
               yourself)};
         id: #header;
         background: (BlPaintBackground new
               paint: (BlColorPaint new
                     color: (Color r: 0.20430107526881722 g: 0.20430107526881722 b: 0.20430107526881722 alpha: 1.0);
                     yourself);
               opacity: 1.0;
               yourself);
         layout: BlFrameLayout new;
         constraintsDo: [:constraints |  constraints horizontal matchParent.
            constraints vertical exact: 30.0 ];
         yourself) . 
      (BlElement new
         addChildren: {(BlElement new
               addChildren: {(ToLabel new
                     text: (BlRopedText new
                           rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                                       paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                                       yourself)} rope: (BlCollectionRope new
                                       collection: 'nom du train';
                                       yourself));
                           yourself);
                     id: #nom;
                     focusability: BlFocusability none;
                     layout: BlLinearLayout horizontal;
                     constraintsDo: [:constraints |  constraints horizontal matchParent.
                        constraints vertical fitContent ];
                     yourself) . 
                  (ToLabel new
                     text: (BlRopedText new
                           rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                                       paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                                       yourself)} rope: (BlCollectionRope new
                                       collection: 'heure d''arrivée';
                                       yourself));
                           yourself);
                     id: #arrivee;
                     focusability: BlFocusability none;
                     layout: BlLinearLayout horizontal;
                     constraintsDo: [:constraints |  constraints horizontal matchParent.
                        constraints vertical fitContent ];
                     yourself) . 
                  (ToLabel new
                     text: (BlRopedText new
                           rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                                       paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                                       yourself)} rope: (BlCollectionRope new
                                       collection: 'heure de départ';
                                       yourself));
                           yourself);
                     id: #depart;
                     focusability: BlFocusability none;
                     layout: BlLinearLayout horizontal;
                     constraintsDo: [:constraints |  constraints horizontal matchParent.
                        constraints vertical fitContent ];
                     yourself) . 
                  (BlElement new
                     addChildren: {(BlElement new
                           id: #F;
                           background: (BlPaintBackground new
                                 paint: (BlLinearGradientPaint new
                                       start: 0 @ 0;
                                       end: 0.0 @ 16.0;
                                       stops: {(0.0 -> (Color r: 0.0 g: 0.0 b: 0.0 alpha: 0.2)) . 
                                          (1.0 -> (Color r: 0.0 g: 0.0 b: 0.0 alpha: 0.4980392156862745))};
                                       yourself);
                                 opacity: 1.0;
                                 yourself);
                           constraintsDo: [:constraints |  constraints horizontal matchParent.
                              constraints vertical matchParent ];
                           yourself)};
                     id: #dot;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 1.0 g: 0.14076246334310852 b: 0.0 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     border: (BlBorderBuilder new
                           paint: (BlColorPaint new
                                 color: (Color r: 1.0 g: 1.0 b: 1.0 alpha: 1.0);
                                 yourself);
                           build);
                     geometry: BlEllipseGeometry new;
                     constraintsDo: [:constraints |  constraints horizontal exact: 16.0.
                        constraints vertical exact: 16.0 ];
                     yourself)};
               id: #labels;
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.3020527859237537 g: 0.3020527859237537 b: 0.3020527859237537 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlLinearGradientPaint new
                           start: 0 @ 0;
                           end: 0 @ 30;
                           stops: {(0.0 -> (Color r: 0.4780058651026393 g: 0.8191593352883676 b: 0.31378299120234604 alpha: 0.0)) . 
                              (0.9 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.0)) . 
                              (0.9 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.8)) . 
                              (1.0 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.8))};
                           yourself);
                     width: 2;
                     build);
               layout: BlLinearLayout horizontal;
               constraintsDo: [:constraints |  constraints horizontal matchParent.
                  constraints vertical fitContent.
                  constraints padding: (BlInsets all: 8.0) ];
               yourself) . 
            (BlElement new
               addChildren: {(ToLabel new
                     text: (BlRopedText new
                           rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                                       paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                                       yourself)} rope: (BlCollectionRope new
                                       collection: 'nom du train';
                                       yourself));
                           yourself);
                     id: #nom;
                     focusability: BlFocusability none;
                     layout: BlLinearLayout horizontal;
                     constraintsDo: [:constraints |  constraints horizontal matchParent.
                        constraints vertical fitContent ];
                     yourself) . 
                  (ToLabel new
                     text: (BlRopedText new
                           rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                                       paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                                       yourself)} rope: (BlCollectionRope new
                                       collection: 'heure d''arrivée';
                                       yourself));
                           yourself);
                     id: #arrivee;
                     focusability: BlFocusability none;
                     layout: BlLinearLayout horizontal;
                     constraintsDo: [:constraints |  constraints horizontal matchParent.
                        constraints vertical fitContent ];
                     yourself) . 
                  (ToLabel new
                     text: (BlRopedText new
                           rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                                       paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                                       yourself)} rope: (BlCollectionRope new
                                       collection: 'heure de départ';
                                       yourself));
                           yourself);
                     id: #depart;
                     focusability: BlFocusability none;
                     layout: BlLinearLayout horizontal;
                     constraintsDo: [:constraints |  constraints horizontal matchParent.
                        constraints vertical fitContent ];
                     yourself) . 
                  (BlElement new
                     addChildren: {(BlElement new
                           id: #F;
                           background: (BlPaintBackground new
                                 paint: (BlLinearGradientPaint new
                                       start: 0 @ 0;
                                       end: 0.0 @ 16.0;
                                       stops: {(0.0 -> (Color r: 0.0 g: 0.0 b: 0.0 alpha: 0.2)) . 
                                          (1.0 -> (Color r: 0.0 g: 0.0 b: 0.0 alpha: 0.4980392156862745))};
                                       yourself);
                                 opacity: 1.0;
                                 yourself);
                           constraintsDo: [:constraints |  constraints horizontal matchParent.
                              constraints vertical matchParent ];
                           yourself)};
                     id: #dot;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 1.0 g: 0.14076246334310852 b: 0.0 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     border: (BlBorderBuilder new
                           paint: (BlColorPaint new
                                 color: (Color r: 1.0 g: 1.0 b: 1.0 alpha: 1.0);
                                 yourself);
                           build);
                     geometry: BlEllipseGeometry new;
                     constraintsDo: [:constraints |  constraints horizontal exact: 16.0.
                        constraints vertical exact: 16.0 ];
                     yourself)};
               id: #v1;
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.3020527859237537 g: 0.3020527859237537 b: 0.3020527859237537 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlLinearGradientPaint new
                           start: 0 @ 0;
                           end: 0 @ 30;
                           stops: {(0.0 -> (Color r: 0.4780058651026393 g: 0.8191593352883676 b: 0.31378299120234604 alpha: 0.0)) . 
                              (0.9 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.0)) . 
                              (0.9 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.8)) . 
                              (1.0 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.8))};
                           yourself);
                     width: 2;
                     build);
               layout: BlLinearLayout horizontal;
               constraintsDo: [:constraints |  constraints horizontal matchParent.
                  constraints vertical fitContent.
                  constraints padding: (BlInsets all: 8.0) ];
               yourself) . 
            (BlElement new
               addChildren: {(ToLabel new
                     text: (BlRopedText new
                           rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                                       paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                                       yourself)} rope: (BlCollectionRope new
                                       collection: 'nom du train';
                                       yourself));
                           yourself);
                     id: #nom;
                     focusability: BlFocusability none;
                     layout: BlLinearLayout horizontal;
                     constraintsDo: [:constraints |  constraints horizontal matchParent.
                        constraints vertical fitContent ];
                     yourself) . 
                  (ToLabel new
                     text: (BlRopedText new
                           rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                                       paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                                       yourself)} rope: (BlCollectionRope new
                                       collection: 'heure d''arrivée';
                                       yourself));
                           yourself);
                     id: #arrivee;
                     focusability: BlFocusability none;
                     layout: BlLinearLayout horizontal;
                     constraintsDo: [:constraints |  constraints horizontal matchParent.
                        constraints vertical fitContent ];
                     yourself) . 
                  (ToLabel new
                     text: (BlRopedText new
                           rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                                       paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                                       yourself)} rope: (BlCollectionRope new
                                       collection: 'heure de départ';
                                       yourself));
                           yourself);
                     id: #depart;
                     focusability: BlFocusability none;
                     layout: BlLinearLayout horizontal;
                     constraintsDo: [:constraints |  constraints horizontal matchParent.
                        constraints vertical fitContent ];
                     yourself) . 
                  (BlElement new
                     addChildren: {(BlElement new
                           id: #F;
                           background: (BlPaintBackground new
                                 paint: (BlLinearGradientPaint new
                                       start: 0 @ 0;
                                       end: 0.0 @ 16.0;
                                       stops: {(0.0 -> (Color r: 0.0 g: 0.0 b: 0.0 alpha: 0.2)) . 
                                          (1.0 -> (Color r: 0.0 g: 0.0 b: 0.0 alpha: 0.4980392156862745))};
                                       yourself);
                                 opacity: 1.0;
                                 yourself);
                           constraintsDo: [:constraints |  constraints horizontal matchParent.
                              constraints vertical matchParent ];
                           yourself)};
                     id: #dot;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 1.0 g: 0.14076246334310852 b: 0.0 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     border: (BlBorderBuilder new
                           paint: (BlColorPaint new
                                 color: (Color r: 1.0 g: 1.0 b: 1.0 alpha: 1.0);
                                 yourself);
                           build);
                     geometry: BlEllipseGeometry new;
                     constraintsDo: [:constraints |  constraints horizontal exact: 16.0.
                        constraints vertical exact: 16.0 ];
                     yourself)};
               id: #v2;
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.3020527859237537 g: 0.3020527859237537 b: 0.3020527859237537 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlLinearGradientPaint new
                           start: 0 @ 0;
                           end: 0 @ 30;
                           stops: {(0.0 -> (Color r: 0.4780058651026393 g: 0.8191593352883676 b: 0.31378299120234604 alpha: 0.0)) . 
                              (0.9 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.0)) . 
                              (0.9 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.8)) . 
                              (1.0 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.8))};
                           yourself);
                     width: 2;
                     build);
               layout: BlLinearLayout horizontal;
               constraintsDo: [:constraints |  constraints horizontal matchParent.
                  constraints vertical fitContent.
                  constraints padding: (BlInsets all: 8.0) ];
               yourself) . 
            (BlElement new
               addChildren: {(ToLabel new
                     text: (BlRopedText new
                           rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                                       paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                                       yourself)} rope: (BlCollectionRope new
                                       collection: 'nom du train';
                                       yourself));
                           yourself);
                     id: #nom;
                     focusability: BlFocusability none;
                     layout: BlLinearLayout horizontal;
                     constraintsDo: [:constraints |  constraints horizontal matchParent.
                        constraints vertical fitContent ];
                     yourself) . 
                  (ToLabel new
                     text: (BlRopedText new
                           rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                                       paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                                       yourself)} rope: (BlCollectionRope new
                                       collection: 'heure d''arrivée';
                                       yourself));
                           yourself);
                     id: #arrivee;
                     focusability: BlFocusability none;
                     layout: BlLinearLayout horizontal;
                     constraintsDo: [:constraints |  constraints horizontal matchParent.
                        constraints vertical fitContent ];
                     yourself) . 
                  (ToLabel new
                     text: (BlRopedText new
                           rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                                       paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                                       yourself)} rope: (BlCollectionRope new
                                       collection: 'heure de départ';
                                       yourself));
                           yourself);
                     id: #depart;
                     focusability: BlFocusability none;
                     layout: BlLinearLayout horizontal;
                     constraintsDo: [:constraints |  constraints horizontal matchParent.
                        constraints vertical fitContent ];
                     yourself) . 
                  (BlElement new
                     addChildren: {(BlElement new
                           id: #F;
                           background: (BlPaintBackground new
                                 paint: (BlLinearGradientPaint new
                                       start: 0 @ 0;
                                       end: 0.0 @ 16.0;
                                       stops: {(0.0 -> (Color r: 0.0 g: 0.0 b: 0.0 alpha: 0.2)) . 
                                          (1.0 -> (Color r: 0.0 g: 0.0 b: 0.0 alpha: 0.4980392156862745))};
                                       yourself);
                                 opacity: 1.0;
                                 yourself);
                           constraintsDo: [:constraints |  constraints horizontal matchParent.
                              constraints vertical matchParent ];
                           yourself)};
                     id: #dot;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 1.0 g: 0.14076246334310852 b: 0.0 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     border: (BlBorderBuilder new
                           paint: (BlColorPaint new
                                 color: (Color r: 1.0 g: 1.0 b: 1.0 alpha: 1.0);
                                 yourself);
                           build);
                     geometry: BlEllipseGeometry new;
                     constraintsDo: [:constraints |  constraints horizontal exact: 16.0.
                        constraints vertical exact: 16.0 ];
                     yourself)};
               id: #v3;
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.3020527859237537 g: 0.3020527859237537 b: 0.3020527859237537 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlLinearGradientPaint new
                           start: 0 @ 0;
                           end: 0 @ 30;
                           stops: {(0.0 -> (Color r: 0.4780058651026393 g: 0.8191593352883676 b: 0.31378299120234604 alpha: 0.0)) . 
                              (0.9 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.0)) . 
                              (0.9 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.8)) . 
                              (1.0 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.8))};
                           yourself);
                     width: 2;
                     build);
               layout: BlLinearLayout horizontal;
               constraintsDo: [:constraints |  constraints horizontal matchParent.
                  constraints vertical fitContent.
                  constraints padding: (BlInsets all: 8.0) ];
               yourself) . 
            (BlElement new
               addChildren: {(ToLabel new
                     text: (BlRopedText new
                           rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                                       paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                                       yourself)} rope: (BlCollectionRope new
                                       collection: 'nom du train';
                                       yourself));
                           yourself);
                     id: #nom;
                     focusability: BlFocusability none;
                     layout: BlLinearLayout horizontal;
                     constraintsDo: [:constraints |  constraints horizontal matchParent.
                        constraints vertical fitContent ];
                     yourself) . 
                  (ToLabel new
                     text: (BlRopedText new
                           rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                                       paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                                       yourself)} rope: (BlCollectionRope new
                                       collection: 'heure d''arrivée';
                                       yourself));
                           yourself);
                     id: #arrivee;
                     focusability: BlFocusability none;
                     layout: BlLinearLayout horizontal;
                     constraintsDo: [:constraints |  constraints horizontal matchParent.
                        constraints vertical fitContent ];
                     yourself) . 
                  (ToLabel new
                     text: (BlRopedText new
                           rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                                       paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                                       yourself)} rope: (BlCollectionRope new
                                       collection: 'heure de départ';
                                       yourself));
                           yourself);
                     id: #depart;
                     focusability: BlFocusability none;
                     layout: BlLinearLayout horizontal;
                     constraintsDo: [:constraints |  constraints horizontal matchParent.
                        constraints vertical fitContent ];
                     yourself) . 
                  (BlElement new
                     addChildren: {(BlElement new
                           id: #F;
                           background: (BlPaintBackground new
                                 paint: (BlLinearGradientPaint new
                                       start: 0 @ 0;
                                       end: 0.0 @ 16.0;
                                       stops: {(0.0 -> (Color r: 0.0 g: 0.0 b: 0.0 alpha: 0.2)) . 
                                          (1.0 -> (Color r: 0.0 g: 0.0 b: 0.0 alpha: 0.4980392156862745))};
                                       yourself);
                                 opacity: 1.0;
                                 yourself);
                           constraintsDo: [:constraints |  constraints horizontal matchParent.
                              constraints vertical matchParent ];
                           yourself)};
                     id: #dot;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 1.0 g: 0.14076246334310852 b: 0.0 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     border: (BlBorderBuilder new
                           paint: (BlColorPaint new
                                 color: (Color r: 1.0 g: 1.0 b: 1.0 alpha: 1.0);
                                 yourself);
                           build);
                     geometry: BlEllipseGeometry new;
                     constraintsDo: [:constraints |  constraints horizontal exact: 16.0.
                        constraints vertical exact: 16.0 ];
                     yourself)};
               id: #v4;
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.3020527859237537 g: 0.3020527859237537 b: 0.3020527859237537 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlLinearGradientPaint new
                           start: 0 @ 0;
                           end: 0 @ 30;
                           stops: {(0.0 -> (Color r: 0.4780058651026393 g: 0.8191593352883676 b: 0.31378299120234604 alpha: 0.0)) . 
                              (0.9 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.0)) . 
                              (0.9 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.8)) . 
                              (1.0 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.8))};
                           yourself);
                     width: 2;
                     build);
               layout: BlLinearLayout horizontal;
               constraintsDo: [:constraints |  constraints horizontal matchParent.
                  constraints vertical fitContent.
                  constraints padding: (BlInsets all: 8.0) ];
               yourself)};
         id: #voies;
         background: (BlPaintBackground new
               paint: (BlColorPaint new
                     color: (Color r: 0.9667644183773216 g: 0.823069403714565 b: 0.28347996089931576 alpha: 1.0);
                     yourself);
               opacity: 1.0;
               yourself);
         layout: BlLinearLayout vertical;
         constraintsDo: [:constraints |  constraints horizontal matchParent.
            constraints vertical fitContent ];
         yourself)};
   id: #systeme;
   background: (BlPaintBackground new
         paint: (BlColorPaint new
               color: (Color r: 0.4066471163245357 g: 0.4506353861192571 b: 0.8396871945259042 alpha: 1.0);
               yourself);
         opacity: 1.0;
         yourself);
   layout: BlLinearLayout vertical;
   constraintsDo: [:constraints |  constraints horizontal matchParent.
      constraints vertical fitContent ];
   yourself)} ] value
]

{ #category : 'pyramid-serialized-bloc' }
PNSystemeRegulation class >> ui_voie [
	"This class has been generated using Pyramid.

	By: 
	2026-01-15 16:04:49"

	<pyStash>
	^ [ {(BlElement new
   addChildren: {(ToLabel new
         text: (BlRopedText new
               rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                           paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                           yourself)} rope: (BlCollectionRope new
                           collection: 'nom du train';
                           yourself));
               yourself);
         id: #nom;
         focusability: BlFocusability none;
         layout: BlLinearLayout horizontal;
         constraintsDo: [:constraints |  constraints horizontal matchParent.
            constraints vertical fitContent ];
         yourself) . 
      (ToLabel new
         text: (BlRopedText new
               rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                           paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                           yourself)} rope: (BlCollectionRope new
                           collection: 'heure d''arrivée';
                           yourself));
               yourself);
         id: #arrivee;
         focusability: BlFocusability none;
         layout: BlLinearLayout horizontal;
         constraintsDo: [:constraints |  constraints horizontal matchParent.
            constraints vertical fitContent ];
         yourself) . 
      (ToLabel new
         text: (BlRopedText new
               rope: (BlAttributeRope attributes: {(BlTextForegroundAttribute new
                           paint: (Color r: 0.9687194525904204 g: 0.9687194525904204 b: 0.9765395894428153 alpha: 1.0);
                           yourself)} rope: (BlCollectionRope new
                           collection: 'heure de départ';
                           yourself));
               yourself);
         id: #depart;
         focusability: BlFocusability none;
         layout: BlLinearLayout horizontal;
         constraintsDo: [:constraints |  constraints horizontal matchParent.
            constraints vertical fitContent ];
         yourself) . 
      (BlElement new
         addChildren: {(BlElement new
               id: #F;
               background: (BlPaintBackground new
                     paint: (BlLinearGradientPaint new
                           start: 0 @ 0;
                           end: 0.0 @ 16.0;
                           stops: {(0.0 -> (Color r: 0.0 g: 0.0 b: 0.0 alpha: 0.2)) . 
                              (1.0 -> (Color r: 0.0 g: 0.0 b: 0.0 alpha: 0.4980392156862745))};
                           yourself);
                     opacity: 1.0;
                     yourself);
               constraintsDo: [:constraints |  constraints horizontal matchParent.
                  constraints vertical matchParent ];
               yourself)};
         id: #dot;
         background: (BlPaintBackground new
               paint: (BlColorPaint new
                     color: (Color r: 1.0 g: 0.14076246334310852 b: 0.0 alpha: 1.0);
                     yourself);
               opacity: 1.0;
               yourself);
         border: (BlBorderBuilder new
               paint: (BlColorPaint new
                     color: (Color r: 1.0 g: 1.0 b: 1.0 alpha: 1.0);
                     yourself);
               build);
         geometry: BlEllipseGeometry new;
         constraintsDo: [:constraints |  constraints horizontal exact: 16.0.
            constraints vertical exact: 16.0 ];
         yourself)};
   id: #voie;
   background: (BlPaintBackground new
         paint: (BlColorPaint new
               color: (Color r: 0.3020527859237537 g: 0.3020527859237537 b: 0.3020527859237537 alpha: 1.0);
               yourself);
         opacity: 1.0;
         yourself);
   border: (BlBorderBuilder new
         paint: (BlLinearGradientPaint new
               start: 0 @ 0;
               end: 0 @ 30;
               stops: {(0.0 -> (Color r: 0.4780058651026393 g: 0.8191593352883676 b: 0.31378299120234604 alpha: 0.0)) . 
                  (0.9 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.0)) . 
                  (0.9 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.8)) . 
                  (1.0 -> (Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.8))};
               yourself);
         width: 2;
         build);
   layout: BlLinearLayout horizontal;
   constraintsDo: [:constraints |  constraints horizontal matchParent.
      constraints vertical fitContent.
      constraints padding: (BlInsets all: 8.0) ];
   yourself)} ] value
]

{ #category : 'initialization' }
PNSystemeRegulation >> initialize [

	| uiVoies |
	super initialize.
	voies := Array new: self nbDeVoies.
	voiturePasse := true.
	userInterface := self class ui_system first.
	uiVoies := (userInterface childWithId: #voies).
	uiVoies removeChildren.
	1 to: self nbDeVoies + 1 do: [ :i | uiVoies addChild: self class ui_voie first ]. 
	((userInterface childWithId: #header) childWithId: #barriere)
		clickAction: [ self voiturePasse: self voiturePasse not ].
	tempsAbsolu := Time now.
	userInterface openInNewSpace toTheme: ToQuantumDarkTheme new.
	self updateUI
]

{ #category : 'initialization' }
PNSystemeRegulation >> nbDeVoies [

	^ 8
]

{ #category : 'accessing' }
PNSystemeRegulation >> tempsAbsolu [

	^ tempsAbsolu
]

{ #category : 'accessing' }
PNSystemeRegulation >> tempsAbsolu: anObject [

	tempsAbsolu := anObject.
	self trainsEnPartances do: [ :each |
			each autorisation: self voiturePasse not.
			each depart: self avecDelais: tempsAbsolu ]
]

{ #category : 'as yet unclassified' }
PNSystemeRegulation >> trainArriveEnGare: aTrain [

	| index |
	index := voies indexOf: nil.
	index = 0 ifTrue: [ ^ self ].
	aTrain tempsArrive: Time now.
	self voies at: index put: aTrain
]

{ #category : 'as yet unclassified' }
PNSystemeRegulation >> trainQuitteLaGare: aTrain [

	| index |
	index := voies indexOf: aTrain.
	self voies at: index put: nil
]

{ #category : 'as yet unclassified' }
PNSystemeRegulation >> trainsEnPartances [

	^ self voies select: [ :train | train ifNil: [ false ] ifNotNil: [ train trainEnPartence: self tempsAbsolu ] ].
]

{ #category : 'updating' }
PNSystemeRegulation >> updateUI [

	| barriere uiVoies |
	((self userInterface childWithId: #header) childWithId: #temps)
		text: self tempsAbsolu printString asRopedText.
	barriere := (self userInterface childWithId: #header) childWithId:
		            #barriere.
	self voiturePasse
		ifTrue: [
				barriere labelText: 'Barrière ouverte (Train KO)'.
				barriere uncheck ]
		ifFalse: [
				barriere labelText: 'Barrière fermée (Train OK)'.
				barriere check ].

	uiVoies := (self userInterface childWithId: #voies) children asArray
		           allButFirst.
	self voies doWithIndex: [ :train :index |
			| uiTrain |
			uiTrain := uiVoies at: index.
			train
				ifNil: [
						(uiTrain childWithId: #nom) text: '--' asRopedText.
						(uiTrain childWithId: #arrivee) text: '--' asRopedText.
						(uiTrain childWithId: #depart) text: '--' asRopedText.
						(uiTrain childWithId: #dot) background: Color gray ]
				ifNotNil: [
						(uiTrain childWithId: #nom) text: train nom asRopedText.
						(uiTrain childWithId: #arrivee) text:
							train tempsArrive printString asRopedText.
						(uiTrain childWithId: #depart) text:
							train tempsDepart printString asRopedText.
						(train trainEnPartence: self tempsAbsolu)
							ifTrue: [
									train autorisation
										ifTrue: [
										(uiTrain childWithId: #dot) background: Color green ]
										ifFalse: [
										(uiTrain childWithId: #dot) background: Color orange ] ]
							ifFalse: [
							(uiTrain childWithId: #dot) background: Color red ] ] ]
]

{ #category : 'accessing' }
PNSystemeRegulation >> userInterface [

	^ userInterface
]

{ #category : 'as yet unclassified' }
PNSystemeRegulation >> voies [

	^ voies
]

{ #category : 'accessing' }
PNSystemeRegulation >> voiturePasse [

	^ voiturePasse
]

{ #category : 'accessing' }
PNSystemeRegulation >> voiturePasse: anObject [

	voiturePasse := anObject
]

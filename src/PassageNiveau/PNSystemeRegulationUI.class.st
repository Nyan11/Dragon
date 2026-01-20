Class {
	#name : 'PNSystemeRegulationUI',
	#superclass : 'BlElement',
	#instVars : [
		'systemeRegulation'
	],
	#category : 'PassageNiveau-user-interface',
	#package : 'PassageNiveau',
	#tag : 'user-interface'
}

{ #category : 'pyramid-serialized-bloc' }
PNSystemeRegulationUI class >> ui_system [
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
PNSystemeRegulationUI class >> ui_voie [
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

{ #category : 'as yet unclassified' }
PNSystemeRegulationUI >> chainOfIds: aCollection [

	| element |
	element := self.
	aCollection do: [ :each | element := element childWithId: each ].
	^ element
]

{ #category : 'initialization' }
PNSystemeRegulationUI >> initialize [

	super initialize.
	self addChildren: self class ui_system.
	self constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ]
]

{ #category : 'initialization' }
PNSystemeRegulationUI >> open [

	self openInNewSpace toTheme: ToRawDarkTheme new.
]

{ #category : 'accessing' }
PNSystemeRegulationUI >> systemeRegulation [

	^ systemeRegulation
]

{ #category : 'accessing' }
PNSystemeRegulationUI >> systemeRegulation: anObject [

	systemeRegulation := anObject.
	self updateNbDeVoies
]

{ #category : 'accessing' }
PNSystemeRegulationUI >> updateNbDeVoies [

	| uiVoies |
	uiVoies := self chainOfIds: { #systeme. #voies }.
	uiVoies removeChildren.
	uiVoies addChild: self class ui_voie first.
	1 to: self systemeRegulation nbDeVoies do: [ :i |
			| voie |
			voie := self class ui_voie first.
			uiVoies addChild: voie.
			(voie childWithId: #dot)
				exa: PNRequirements capellaFunctionalExchange5;
				exa: PNRequirements capellaFunctionalExchange2 ]
]

{ #category : 'updating' }
PNSystemeRegulationUI >> updateUI [

	| barriere uiVoies |
	(self chainOfIds: { #systeme. #header. #temps }) text:
		self systemeRegulation tempsAbsolu printString asRopedText.

	barriere := self chainOfIds: { #systeme. #header. #barriere }.
	self systemeRegulation voiturePasse
		ifTrue: [
				barriere labelText: 'Barrière ouverte (Train KO)'.
				barriere uncheck ]
		ifFalse: [
				barriere labelText: 'Barrière fermée (Train OK)'.
				barriere check ].

	uiVoies := (self chainOfIds: { #systeme. #voies }) children asArray
		           allButFirst.
	self systemeRegulation voies doWithIndex: [ :train :index |
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
						(train trainEnPartence: self systemeRegulation tempsAbsolu)
							ifTrue: [
									train autorisation
										ifTrue: [
										(uiTrain childWithId: #dot) background: Color green ]
										ifFalse: [
										(uiTrain childWithId: #dot) background: Color orange ] ]
							ifFalse: [ (uiTrain childWithId: #dot) background: Color red ] ] ]
]

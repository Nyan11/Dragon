Class {
	#name : 'ExAClock',
	#superclass : 'ToElement',
	#instVars : [
		'currentTime'
	],
	#category : 'ExecutableAnnotations-Example',
	#package : 'ExecutableAnnotations-Example'
}

{ #category : 'pyramid-serialized-bloc' }
ExAClock class >> blElement [
	"This class has been generated using Pyramid.

	By: 
	2026-01-14 16:50:01"

	<pyStash>
	^ [ {(BlElement new
   addChildren: {(BlElement new
         addChildren: {(BlElement new
               addChildren: {(BlElement new
                     id: #C;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     border: (BlBorderBuilder new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           width: 4;
                           build);
                     geometry: (BlLineGeometry new
                           from: 0 @ 0;
                           to: 100 @ 0;
                           yourself);
                     outskirts: BlOutskirts centered;
                     clipChildren: false;
                     constraintsDo: [:constraints |  constraints horizontal exact: 100.0.
                        constraints vertical exact: 100.0 ];
                     yourself)};
               id: #decoration12;
               transformDo: [:transformation |  transformation rotateBy: 270 ];
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.9110459433040078 g: 0.40371456500488756 b: 0.7712609970674487 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlColorPaint new
                           color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself);
                     width: 0;
                     build);
               clipChildren: false;
               layout: BlFrameLayout new;
               constraintsDo: [:constraints |  constraints horizontal exact: 0.0.
                  constraints vertical exact: 0.0.
                  constraints frame horizontal alignCenter.
                  constraints frame vertical alignCenter ];
               yourself) . 
            (BlElement new
               addChildren: {(BlElement new
                     id: #C;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     border: (BlBorderBuilder new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           width: 4;
                           build);
                     geometry: (BlLineGeometry new
                           from: 0 @ 0;
                           to: 100 @ 0;
                           yourself);
                     outskirts: BlOutskirts centered;
                     clipChildren: false;
                     constraintsDo: [:constraints |  constraints horizontal exact: 100.0.
                        constraints vertical exact: 100.0 ];
                     yourself)};
               id: #decoration1;
               transformDo: [:transformation |  transformation rotateBy: 360 ];
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.9110459433040078 g: 0.40371456500488756 b: 0.7712609970674487 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlColorPaint new
                           color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself);
                     width: 0;
                     build);
               clipChildren: false;
               layout: BlFrameLayout new;
               constraintsDo: [:constraints |  constraints horizontal exact: 0.0.
                  constraints vertical exact: 0.0.
                  constraints frame horizontal alignCenter.
                  constraints frame vertical alignCenter ];
               yourself) . 
            (BlElement new
               addChildren: {(BlElement new
                     id: #C;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     border: (BlBorderBuilder new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           width: 4;
                           build);
                     geometry: (BlLineGeometry new
                           from: 0 @ 0;
                           to: 100 @ 0;
                           yourself);
                     outskirts: BlOutskirts centered;
                     clipChildren: false;
                     constraintsDo: [:constraints |  constraints horizontal exact: 100.0.
                        constraints vertical exact: 100.0 ];
                     yourself)};
               id: #decoration2;
               transformDo: [:transformation |  transformation rotateBy: 120 ];
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.9110459433040078 g: 0.40371456500488756 b: 0.7712609970674487 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlColorPaint new
                           color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself);
                     width: 0;
                     build);
               clipChildren: false;
               layout: BlFrameLayout new;
               constraintsDo: [:constraints |  constraints horizontal exact: 0.0.
                  constraints vertical exact: 0.0.
                  constraints frame horizontal alignCenter.
                  constraints frame vertical alignCenter ];
               yourself) . 
            (BlElement new
               addChildren: {(BlElement new
                     id: #C;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     border: (BlBorderBuilder new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           width: 4;
                           build);
                     geometry: (BlLineGeometry new
                           from: 0 @ 0;
                           to: 100 @ 0;
                           yourself);
                     outskirts: BlOutskirts centered;
                     clipChildren: false;
                     constraintsDo: [:constraints |  constraints horizontal exact: 100.0.
                        constraints vertical exact: 100.0 ];
                     yourself)};
               id: #decoration3;
               transformDo: [:transformation |  transformation rotateBy: 180 ];
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.9110459433040078 g: 0.40371456500488756 b: 0.7712609970674487 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlColorPaint new
                           color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself);
                     width: 0;
                     build);
               clipChildren: false;
               layout: BlFrameLayout new;
               constraintsDo: [:constraints |  constraints horizontal exact: 0.0.
                  constraints vertical exact: 0.0.
                  constraints frame horizontal alignCenter.
                  constraints frame vertical alignCenter ];
               yourself) . 
            (BlElement new
               addChildren: {(BlElement new
                     id: #C;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     border: (BlBorderBuilder new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           width: 4;
                           build);
                     geometry: (BlLineGeometry new
                           from: 0 @ 0;
                           to: 100 @ 0;
                           yourself);
                     outskirts: BlOutskirts centered;
                     clipChildren: false;
                     constraintsDo: [:constraints |  constraints horizontal exact: 100.0.
                        constraints vertical exact: 100.0 ];
                     yourself)};
               id: #decoration4;
               transformDo: [:transformation |  transformation rotateBy: 240 ];
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.9110459433040078 g: 0.40371456500488756 b: 0.7712609970674487 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlColorPaint new
                           color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself);
                     width: 0;
                     build);
               clipChildren: false;
               layout: BlFrameLayout new;
               constraintsDo: [:constraints |  constraints horizontal exact: 0.0.
                  constraints vertical exact: 0.0.
                  constraints frame horizontal alignCenter.
                  constraints frame vertical alignCenter ];
               yourself) . 
            (BlElement new
               addChildren: {(BlElement new
                     id: #C;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     border: (BlBorderBuilder new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           width: 4;
                           build);
                     geometry: (BlLineGeometry new
                           from: 0 @ 0;
                           to: 100 @ 0;
                           yourself);
                     outskirts: BlOutskirts centered;
                     clipChildren: false;
                     constraintsDo: [:constraints |  constraints horizontal exact: 100.0.
                        constraints vertical exact: 100.0 ];
                     yourself)};
               id: #decoration5;
               transformDo: [:transformation |  transformation rotateBy: 330 ];
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.9110459433040078 g: 0.40371456500488756 b: 0.7712609970674487 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlColorPaint new
                           color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself);
                     width: 0;
                     build);
               clipChildren: false;
               layout: BlFrameLayout new;
               constraintsDo: [:constraints |  constraints horizontal exact: 0.0.
                  constraints vertical exact: 0.0.
                  constraints frame horizontal alignCenter.
                  constraints frame vertical alignCenter ];
               yourself) . 
            (BlElement new
               addChildren: {(BlElement new
                     id: #C;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     border: (BlBorderBuilder new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           width: 4;
                           build);
                     geometry: (BlLineGeometry new
                           from: 0 @ 0;
                           to: 100 @ 0;
                           yourself);
                     outskirts: BlOutskirts centered;
                     clipChildren: false;
                     constraintsDo: [:constraints |  constraints horizontal exact: 100.0.
                        constraints vertical exact: 100.0 ];
                     yourself)};
               id: #decoration6;
               transformDo: [:transformation |  transformation rotateBy: 90 ];
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.9110459433040078 g: 0.40371456500488756 b: 0.7712609970674487 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlColorPaint new
                           color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself);
                     width: 0;
                     build);
               clipChildren: false;
               layout: BlFrameLayout new;
               constraintsDo: [:constraints |  constraints horizontal exact: 0.0.
                  constraints vertical exact: 0.0.
                  constraints frame horizontal alignCenter.
                  constraints frame vertical alignCenter ];
               yourself) . 
            (BlElement new
               addChildren: {(BlElement new
                     id: #C;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     border: (BlBorderBuilder new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           width: 4;
                           build);
                     geometry: (BlLineGeometry new
                           from: 0 @ 0;
                           to: 100 @ 0;
                           yourself);
                     outskirts: BlOutskirts centered;
                     clipChildren: false;
                     constraintsDo: [:constraints |  constraints horizontal exact: 100.0.
                        constraints vertical exact: 100.0 ];
                     yourself)};
               id: #decoration7;
               transformDo: [:transformation |  transformation rotateBy: 150 ];
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.9110459433040078 g: 0.40371456500488756 b: 0.7712609970674487 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlColorPaint new
                           color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself);
                     width: 0;
                     build);
               clipChildren: false;
               layout: BlFrameLayout new;
               constraintsDo: [:constraints |  constraints horizontal exact: 0.0.
                  constraints vertical exact: 0.0.
                  constraints frame horizontal alignCenter.
                  constraints frame vertical alignCenter ];
               yourself) . 
            (BlElement new
               addChildren: {(BlElement new
                     id: #C;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     border: (BlBorderBuilder new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           width: 4;
                           build);
                     geometry: (BlLineGeometry new
                           from: 0 @ 0;
                           to: 100 @ 0;
                           yourself);
                     outskirts: BlOutskirts centered;
                     clipChildren: false;
                     constraintsDo: [:constraints |  constraints horizontal exact: 100.0.
                        constraints vertical exact: 100.0 ];
                     yourself)};
               id: #decoration8;
               transformDo: [:transformation |  transformation rotateBy: 210 ];
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.9110459433040078 g: 0.40371456500488756 b: 0.7712609970674487 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlColorPaint new
                           color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself);
                     width: 0;
                     build);
               clipChildren: false;
               layout: BlFrameLayout new;
               constraintsDo: [:constraints |  constraints horizontal exact: 0.0.
                  constraints vertical exact: 0.0.
                  constraints frame horizontal alignCenter.
                  constraints frame vertical alignCenter ];
               yourself) . 
            (BlElement new
               addChildren: {(BlElement new
                     id: #C;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     border: (BlBorderBuilder new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           width: 4;
                           build);
                     geometry: (BlLineGeometry new
                           from: 0 @ 0;
                           to: 100 @ 0;
                           yourself);
                     outskirts: BlOutskirts centered;
                     clipChildren: false;
                     constraintsDo: [:constraints |  constraints horizontal exact: 100.0.
                        constraints vertical exact: 100.0 ];
                     yourself)};
               id: #decoration9;
               transformDo: [:transformation |  transformation rotateBy: 300 ];
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.9110459433040078 g: 0.40371456500488756 b: 0.7712609970674487 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlColorPaint new
                           color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself);
                     width: 0;
                     build);
               clipChildren: false;
               layout: BlFrameLayout new;
               constraintsDo: [:constraints |  constraints horizontal exact: 0.0.
                  constraints vertical exact: 0.0.
                  constraints frame horizontal alignCenter.
                  constraints frame vertical alignCenter ];
               yourself) . 
            (BlElement new
               addChildren: {(BlElement new
                     id: #C;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     border: (BlBorderBuilder new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           width: 4;
                           build);
                     geometry: (BlLineGeometry new
                           from: 0 @ 0;
                           to: 100 @ 0;
                           yourself);
                     outskirts: BlOutskirts centered;
                     clipChildren: false;
                     constraintsDo: [:constraints |  constraints horizontal exact: 100.0.
                        constraints vertical exact: 100.0 ];
                     yourself)};
               id: #decoration10;
               transformDo: [:transformation |  transformation rotateBy: 60 ];
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.9110459433040078 g: 0.40371456500488756 b: 0.7712609970674487 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlColorPaint new
                           color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself);
                     width: 0;
                     build);
               clipChildren: false;
               layout: BlFrameLayout new;
               constraintsDo: [:constraints |  constraints horizontal exact: 0.0.
                  constraints vertical exact: 0.0.
                  constraints frame horizontal alignCenter.
                  constraints frame vertical alignCenter ];
               yourself) . 
            (BlElement new
               addChildren: {(BlElement new
                     id: #C;
                     background: (BlPaintBackground new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           opacity: 1.0;
                           yourself);
                     border: (BlBorderBuilder new
                           paint: (BlColorPaint new
                                 color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself);
                           width: 4;
                           build);
                     geometry: (BlLineGeometry new
                           from: 0 @ 0;
                           to: 100 @ 0;
                           yourself);
                     outskirts: BlOutskirts centered;
                     clipChildren: false;
                     constraintsDo: [:constraints |  constraints horizontal exact: 100.0.
                        constraints vertical exact: 100.0 ];
                     yourself)};
               id: #decoration11;
               transformDo: [:transformation |  transformation rotateBy: 30 ];
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.9110459433040078 g: 0.40371456500488756 b: 0.7712609970674487 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlColorPaint new
                           color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself);
                     width: 0;
                     build);
               clipChildren: false;
               layout: BlFrameLayout new;
               constraintsDo: [:constraints |  constraints horizontal exact: 0.0.
                  constraints vertical exact: 0.0.
                  constraints frame horizontal alignCenter.
                  constraints frame vertical alignCenter ];
               yourself) . 
            (BlElement new
               id: #disque;
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 1.0 g: 1.0 b: 1.0 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               geometry: BlEllipseGeometry new;
               constraintsDo: [:constraints |  constraints horizontal exact: 150.0.
                  constraints vertical exact: 150.0.
                  constraints frame horizontal alignCenter.
                  constraints frame vertical alignCenter ];
               yourself)};
         id: #decorations;
         background: (BlPaintBackground new
               paint: (BlColorPaint new
                     color: (Color r: 0.3489736070381232 g: 0.23949169110459434 b: 0.5327468230694037 alpha: 1.0);
                     yourself);
               opacity: 1.0;
               yourself);
         border: (BlBorderBuilder new
               paint: (BlColorPaint new
                     color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                     yourself);
               width: 0;
               build);
         clipChildren: false;
         layout: BlFrameLayout new;
         constraintsDo: [:constraints |  constraints horizontal exact: 0.0.
            constraints vertical exact: 0.0.
            constraints frame horizontal alignCenter.
            constraints frame vertical alignCenter ];
         yourself) . 
      (BlElement new
         addChildren: {(BlElement new
               id: #I;
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.7790811339198436 g: 0.5053763440860215 b: 0.9286412512218963 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlColorPaint new
                           color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself);
                     width: 3;
                     build);
               geometry: (BlLineGeometry new
                     from: 0 @ -50;
                     to: 0 @ 0;
                     yourself);
               outskirts: BlOutskirts centered;
               yourself)};
         id: #hour;
         background: (BlPaintBackground new
               paint: (BlColorPaint new
                     color: (Color r: 0.4750733137829912 g: 0.4887585532746823 b: 0.0469208211143695 alpha: 1.0);
                     yourself);
               opacity: 1.0;
               yourself);
         clipChildren: false;
         constraintsDo: [:constraints |  constraints horizontal exact: 0.0.
            constraints vertical exact: 0.0.
            constraints frame horizontal alignCenter.
            constraints frame vertical alignCenter ];
         yourself) . 
      (BlElement new
         addChildren: {(BlElement new
               id: #J;
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.7790811339198436 g: 0.5053763440860215 b: 0.9286412512218963 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlColorPaint new
                           color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself);
                     width: 3;
                     build);
               geometry: (BlLineGeometry new
                     from: 0 @ -100;
                     to: 0 @ 0;
                     yourself);
               outskirts: BlOutskirts centered;
               yourself)};
         id: #minute;
         background: (BlPaintBackground new
               paint: (BlColorPaint new
                     color: (Color r: 0.5210166177908113 g: 0.1935483870967742 b: 0.5620723362658846 alpha: 1.0);
                     yourself);
               opacity: 1.0;
               yourself);
         clipChildren: false;
         constraintsDo: [:constraints |  constraints horizontal exact: 0.0.
            constraints vertical exact: 0.0.
            constraints frame horizontal alignCenter.
            constraints frame vertical alignCenter ];
         yourself) . 
      (BlElement new
         addChildren: {(BlElement new
               id: #K;
               background: (BlPaintBackground new
                     paint: (BlColorPaint new
                           color: (Color r: 0.7790811339198436 g: 0.5053763440860215 b: 0.9286412512218963 alpha: 1.0);
                           yourself);
                     opacity: 1.0;
                     yourself);
               border: (BlBorderBuilder new
                     paint: (BlColorPaint new
                           color: (Color r: 1.0 g: 0.0 b: 0.19648093841642228 alpha: 1.0);
                           yourself);
                     width: 2;
                     build);
               geometry: (BlLineGeometry new
                     from: 0 @ -100;
                     to: 0 @ 0;
                     yourself);
               outskirts: BlOutskirts centered;
               yourself)};
         id: #second;
         background: (BlPaintBackground new
               paint: (BlColorPaint new
                     color: (Color r: 0.260019550342131 g: 0.978494623655914 b: 0.3235581622678397 alpha: 1.0);
                     yourself);
               opacity: 1.0;
               yourself);
         clipChildren: false;
         constraintsDo: [:constraints |  constraints horizontal exact: 0.0.
            constraints vertical exact: 0.0.
            constraints frame horizontal alignCenter.
            constraints frame vertical alignCenter ];
         yourself)};
   id: #clock;
   background: (BlPaintBackground new
         paint: (BlColorPaint new
               color: (Color r: 1.0 g: 1.0 b: 1.0 alpha: 1.0);
               yourself);
         opacity: 1.0;
         yourself);
   border: (BlBorderBuilder new
         paint: (BlColorPaint new
               color: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
               yourself);
         width: 2;
         build);
   geometry: BlCircleGeometry new;
   layout: BlFrameLayout new;
   constraintsDo: [:constraints |  constraints horizontal exact: 200.0.
      constraints vertical exact: 200.0 ];
   yourself)} ] value
]

{ #category : 'accessing' }
ExAClock >> clockElement [

	^ self childWithId: 'clock'
]

{ #category : 'accessing' }
ExAClock >> currentTime [

	^ currentTime
]

{ #category : 'accessing' }
ExAClock >> currentTime: anObject [

	currentTime := anObject.
	self updateclock
]

{ #category : 'accessing' }
ExAClock >> hourElement [

	^ self clockElement childWithId: 'hour'
]

{ #category : 'initialization' }
ExAClock >> initialize [

	super initialize.
	self constraintsDo: [ :c | c horizontal fitContent . c vertical fitContent ].
	self addChildren: self class blElement.
	self currentTime: Time now
]

{ #category : 'accessing' }
ExAClock >> minuteElement [

	^ self clockElement childWithId: 'minute'
]

{ #category : 'accessing' }
ExAClock >> secondElement [

	^ self clockElement childWithId: 'second'
]

{ #category : 'accessing' }
ExAClock >> updateclock [

	self hourElement transformDo: [ :t | t rotateBy: self currentTime hours * 30 + (self currentTime minutes * 0.5)].
	self minuteElement transformDo: [ :t | t rotateBy: self currentTime minutes * 360 / 60 ].
	self secondElement transformDo: [ :t | t rotateBy: self currentTime seconds * 360 / 60 ]
]

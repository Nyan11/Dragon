Class {
	#name : 'PNUISystemInformationGareImpl',
	#superclass : 'SpPresenter',
	#traits : 'MolComponentImpl + PNUISystemInformationGareType + PNSystemInformationGareEvents',
	#classTraits : 'MolComponentImpl classTrait + PNUISystemInformationGareType classTrait + PNSystemInformationGareEvents classTrait',
	#instVars : [
		'table'
	],
	#category : 'PassageNiveau-molecule',
	#package : 'PassageNiveau',
	#tag : 'molecule'
}

{ #category : 'life cycle' }
PNUISystemInformationGareImpl >> componentActivate [
	self getPNSystemInformationGareEventsSubscriber subscribe: self
]

{ #category : 'life cycle' }
PNUISystemInformationGareImpl >> componentRemove [

	self getPNSystemInformationGareEventsSubscriber unsubscribe: self
]

{ #category : 'layout' }
PNUISystemInformationGareImpl >> defaultLayout [

	^ SpBoxLayout newVertical add: table; yourself
]

{ #category : 'component accessing' }
PNUISystemInformationGareImpl >> getPNSystemInformationGareEventsSubscriber [
	| eventsSymbol eventsSubscriber itf |
	itf := PNSystemInformationGareEvents.
	eventsSymbol := self eventsSubscribers at: itf ifAbsent: [^MolNotFoundEventsSubscriber new interface: itf name: nil].
	eventsSymbol isCollection
	 	ifTrue: 
			[eventsSubscriber := MolComponentManager default locatorServices 
						searchEventsSubscriberFor: PNSystemInformationGareEvents named: eventsSymbol ]. 
	^eventsSubscriber
]

{ #category : 'component accessing' }
PNUISystemInformationGareImpl >> getPNSystemInformationGareServicesProvider [
	| servicesSymbol servicesProvider itf |

	itf := PNSystemInformationGareServices.
	servicesSymbol := self servicesProviders at: itf ifAbsent: [nil].
	(servicesSymbol isNil or:[servicesSymbol isSymbol not]) ifTrue: [ ^ MolNotFoundServicesProvider new interface: itf name: nil ].

	servicesProvider := MolComponentManager default locatorServices searchServicesProviderFor: PNSystemInformationGareServices named: servicesSymbol.
	^servicesProvider
]

{ #category : 'initialization - deprecated' }
PNUISystemInformationGareImpl >> initializePresenter [

	table := SpTablePresenter new
		         beResizable;
		items: { 1 -> nil };
		         addColumn: (SpStringTableColumn new
				          title: 'Quai';
				          width: 200;
				          evaluated: [ :quai | quai key printString ];
				          yourself);
		         addColumn: (SpStringTableColumn new
				          title: 'Nom';
				          width: 200;
				          evaluated: [ :quai |
						          quai value ifNil: [ '---' ] ifNotNil: [
									          quai value isSymbol
										          ifTrue: [ quai value printString ]
										          ifFalse: [ quai value nom printString ] ] ];
				          yourself);
		         addColumn: (SpStringTableColumn new
				          title: 'Arrive';
				          width: 200;
				          evaluated: [ :quai |
						          quai value ifNil: [ '---' ] ifNotNil: [
									          quai value isSymbol
										          ifTrue: [ '---' ]
										          ifFalse: [ quai value arrive printString ] ] ];
				          yourself);
		         addColumn: (SpStringTableColumn new
				          title: 'Depart';
				          width: 200;
				          evaluated: [ :quai |
						          quai value ifNil: [ '---' ] ifNotNil: [
									          quai value isSymbol
										          ifTrue: [ '---' ]
										          ifFalse: [ quai value depart printString ] ] ];
				          yourself);
		         yourself
]

{ #category : 'protocol' }
PNUISystemInformationGareImpl >> parametersDo: actionBlock ifNone: exceptionBlock [
	"Call the parameters if found with the parameters interface as argument. If none execute an exception block"

	actionBlock value: self
]

{ #category : 'protocol' }
PNUISystemInformationGareImpl >> servicesDo: actionBlock ifNone: exceptionBlock [
	"Call the services if found with the services interface as argument. If none execute an exception block"

	actionBlock value: self
]

{ #category : 'as yet unclassified' }
PNUISystemInformationGareImpl >> trainArriveEnGare: unTrain auQuai: unNombre [

	self updatePresenter
]

{ #category : 'as yet unclassified' }
PNUISystemInformationGareImpl >> trainEnPartence: unTrain auQuai: unNombre [

	self updatePresenter
]

{ #category : 'as yet unclassified' }
PNUISystemInformationGareImpl >> trainQuitteLaGare: unTrain auQuai: unNombre [

	self updatePresenter
]

{ #category : 'initialization' }
PNUISystemInformationGareImpl >> updatePresenter [

	super updatePresenter.

	table model collection: OrderedCollection new.
	table items:
		self getPNSystemInformationGareServicesProvider listeDesQuais
]

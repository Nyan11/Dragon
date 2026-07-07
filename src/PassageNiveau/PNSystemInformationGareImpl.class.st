Class {
	#name : 'PNSystemInformationGareImpl',
	#superclass : 'MolAbstractComponentImpl',
	#traits : 'PNSystemInformationGareType + PNSimulationTimerEvents + PNSystemInformationGareServices',
	#classTraits : 'PNSystemInformationGareType classTrait + PNSimulationTimerEvents classTrait + PNSystemInformationGareServices classTrait',
	#instVars : [
		'random',
		'quais'
	],
	#category : 'PassageNiveau-molecule',
	#package : 'PassageNiveau',
	#tag : 'molecule'
}

{ #category : 'nil' }
PNSystemInformationGareImpl >> componentActivate [

	self getPNSimulationTimerEventsSubscriber subscribe: self
]

{ #category : 'nil' }
PNSystemInformationGareImpl >> componentInitialize [

	super componentInitialize.
	random := Random seed: 1.
	quais := Array new: 8.
]

{ #category : 'life cycle' }
PNSystemInformationGareImpl >> componentRemove [

	self getPNSimulationTimerEventsSubscriber unsubscribe: self
]

{ #category : 'as yet unclassified' }
PNSystemInformationGareImpl >> creerNouveauTrain: unTemps [

	| quai train |
	quai := self prochainQuaiDisponible.
	quai ifNil: [ ^ self ].
	self quais at: quai put: #reserve.

	train := PNTrain new
		         nom:
			         (self random nextIntegerBetween: 1000 and: 9999)
				         printString;
		         arrive: unTemps;
		         depart: (unTemps addSeconds:
					          60 * (self random nextIntegerBetween: 10 and: 40));
		         yourself.

	self envoyerTrain: train auQuai: quai.
	self getPNSystemInformationGareEventsNotifier
		trainArriveEnGare: train
		auQuai: quai
]

{ #category : 'as yet unclassified' }
PNSystemInformationGareImpl >> envoyerTrain: train auQuai: quai [

	self quais at: quai put: train
]

{ #category : 'component accessing' }
PNSystemInformationGareImpl >> getPNSimulationTimerEventsSubscriber [
	| eventsSymbol eventsSubscriber itf |
	itf := PNSimulationTimerEvents.
	eventsSymbol := self eventsSubscribers at: itf ifAbsent: [^MolNotFoundEventsSubscriber new interface: itf name: nil].
	eventsSymbol isCollection
	 	ifTrue: 
			[eventsSubscriber := MolComponentManager default locatorServices 
						searchEventsSubscriberFor: PNSimulationTimerEvents named: eventsSymbol ]. 
	^eventsSubscriber
]

{ #category : 'component accessing' }
PNSystemInformationGareImpl >> getPNSimulationTimerServicesProvider [
	| servicesSymbol servicesProvider itf |

	itf := PNSimulationTimerServices.
	servicesSymbol := self servicesProviders at: itf ifAbsent: [nil].
	(servicesSymbol isNil or:[servicesSymbol isSymbol not]) ifTrue: [ ^ MolNotFoundServicesProvider new interface: itf name: nil ].

	servicesProvider := MolComponentManager default locatorServices searchServicesProviderFor: PNSimulationTimerServices named: servicesSymbol.
	^servicesProvider
]

{ #category : 'component accessing' }
PNSystemInformationGareImpl >> getPNSystemInformationGareEventsNotifier [
	^self eventsNotifiers at: PNSystemInformationGareEvents ifAbsent: [^MolNotFoundEventsNotifier new interface: PNSystemInformationGareEvents name: nil].
]

{ #category : 'as yet unclassified' }
PNSystemInformationGareImpl >> informTrainQuitteLaGare: unTrain [

	| quai |
	quai := self quais indexOf: unTrain.
	self quais at: quai put: nil.
			self getPNSystemInformationGareEventsNotifier
				trainQuitteLaGare: unTrain
				auQuai: quai.
	
]

{ #category : 'as yet unclassified' }
PNSystemInformationGareImpl >> listeDesQuais [

	^ quais withIndexCollect: [ :item :index | index -> item ]
]

{ #category : 'accessing' }
PNSystemInformationGareImpl >> listeDesTrainsEnPartance [

	| trainsQuittantLaGare |
	trainsQuittantLaGare := self quais select: [ :each |
			                        each isNotNil and: [
				                        each isSymbol not and: [
					                        each depart < self getPNSimulationTimerServicesProvider currentTime ] ] ].

	^ trainsQuittantLaGare
]

{ #category : 'as yet unclassified' }
PNSystemInformationGareImpl >> prochainQuaiDisponible [

	^ self quais indexOf: nil ifAbsent: [ nil ]
]

{ #category : 'as yet unclassified' }
PNSystemInformationGareImpl >> quais [

	^ quais
]

{ #category : 'as yet unclassified' }
PNSystemInformationGareImpl >> random [

	^ random
]

{ #category : 'accessing' }
PNSystemInformationGareImpl >> updateTime: unTemps [

	| trainsQuittantLaGare |
	self creerNouveauTrain: unTemps.
	trainsQuittantLaGare := self listeDesTrainsEnPartance.

	trainsQuittantLaGare do: [ :train |
			| quai |
			quai := self quais indexOf: train.
			self getPNSystemInformationGareEventsNotifier
				trainEnPartence: train
				auQuai: quai ]
]

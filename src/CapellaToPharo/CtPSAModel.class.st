Class {
	#name : 'CtPSAModel',
	#superclass : 'Object',
	#instVars : [
		'capellaModel',
		'actors',
		'functions',
		'functionnalExchanges',
		'system'
	],
	#category : 'CapellaToPharo',
	#package : 'CapellaToPharo'
}

{ #category : 'accessing' }
CtPSAModel >> actors [

	^ actors
]

{ #category : 'building' }
CtPSAModel >> build [

	system := self capellaModel selectSystemSystem asSystemActors.
	actors := self capellaModel selectSystemActors collect:
		          #asSystemActors.
	functions := self capellaModel selectSystemFunctions collect:
		             #asSystemFunctions.
	functionnalExchanges := self capellaModel
		                        selectSystemFunctionnalExchanges collect:
		                        #asSystemFunctionnalExchanges.

	system linksToFunctionsIn: functions.
	actors do: [ :actor | actor linksToFunctionsIn: functions ].
	functionnalExchanges do: [ :fexchange | fexchange linksToFunctionsIn: functions ]
]

{ #category : 'accessing' }
CtPSAModel >> capellaModel [

	^ capellaModel
]

{ #category : 'accessing' }
CtPSAModel >> capellaModel: anObject [

	capellaModel := anObject.
	self build
]

{ #category : 'accessing' }
CtPSAModel >> functionnalExchanges [

	^ functionnalExchanges
]

{ #category : 'accessing' }
CtPSAModel >> functions [

	^ functions
]

{ #category : 'accessing' }
CtPSAModel >> system [

	^ system
]

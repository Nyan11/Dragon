Class {
	#name : 'BaselineOfCapellaToPharo',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfCapellaToPharo',
	#package : 'BaselineOfCapellaToPharo'
}

{ #category : 'baselines' }
BaselineOfCapellaToPharo >> baseline: spec [
	"Common baseline for all Pharo versions"

	<baseline>
	spec for: #common do: [ self baselineForCommon: spec ]
]

{ #category : 'baselines' }
BaselineOfCapellaToPharo >> baselineForCommon: spec [

	<baseline>
	spec preLoadDoIt: #preload:package:.
	spec postLoadDoIt: #postload:package:.

	"Dependencies"
	self commonDependencies: spec.

	"Packages"
	self commonPackages: spec
]

{ #category : 'dependencies' }
BaselineOfCapellaToPharo >> commonDependencies: spec [
	"do nothing"

	
]

{ #category : 'baselines' }
BaselineOfCapellaToPharo >> commonPackages: spec [

	spec package: 'CapellaToPharo'.

	"tests packages"
	spec package: 'CapellaToPharo-Tests' with: [ spec requires: #( 'CapellaToPharo' ) ]
]

{ #category : 'actions' }
BaselineOfCapellaToPharo >> postload: loader package: packageSpec [
	"do nothing"

	
]

{ #category : 'actions' }
BaselineOfCapellaToPharo >> preload: loader package: packageSpec [
	"do nothing"

	
]

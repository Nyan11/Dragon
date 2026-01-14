Class {
	#name : 'BaselineOfObjectsToCode',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfObjectsToCode',
	#package : 'BaselineOfObjectsToCode'
}

{ #category : 'baselines' }
BaselineOfObjectsToCode >> baseline: spec [
	"Common baseline for all Pharo versions"

	<baseline>
	spec for: #common do: [ self baselineForCommon: spec ]
]

{ #category : 'baselines' }
BaselineOfObjectsToCode >> baselineForCommon: spec [

	<baseline>
	spec preLoadDoIt: #preload:package:.
	spec postLoadDoIt: #postload:package:.

	"Dependencies"
	self commonDependencies: spec.

	"Packages"
	self commonPackages: spec
]

{ #category : 'baselines' }
BaselineOfObjectsToCode >> commonDependencies: spec [
	"do nothing"

	
]

{ #category : 'baselines' }
BaselineOfObjectsToCode >> commonPackages: spec [

	spec package: 'ObjectsToCode'.

	"tests packages"
	spec package: 'ObjectsToCode-Tests' with: [ spec requires: #( 'ObjectsToCode' ) ]
]

{ #category : 'baselines' }
BaselineOfObjectsToCode >> postload: loader package: packageSpec [
	"do nothing"


]

{ #category : 'baselines' }
BaselineOfObjectsToCode >> preload: loader package: packageSpec [
	"do nothing"


]

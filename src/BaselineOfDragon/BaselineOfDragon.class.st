Class {
	#name : 'BaselineOfDragon',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfDragon',
	#package : 'BaselineOfDragon'
}

{ #category : 'baselines' }
BaselineOfDragon >> baseline: spec [
	"Common baseline for all Pharo versions"

	<baseline>
	spec for: #common do: [ self baselineForCommon: spec ]
]

{ #category : 'baselines' }
BaselineOfDragon >> baselineForCommon: spec [

	<baseline>
	spec preLoadDoIt: #preload:package:.
	spec postLoadDoIt: #postload:package:.

	"Dependencies"
	self commonDependencies: spec.

	"Packages"
	self commonPackages: spec
]

{ #category : 'baselines' }
BaselineOfDragon >> commonDependencies: spec [
	"do nothing"

	
]

{ #category : 'baselines' }
BaselineOfDragon >> commonPackages: spec [

	spec package: 'Dragon'.

	"tests packages"
	spec package: 'Dragon-Tests' with: [ spec requires: #( 'Dragon' ) ]
]

{ #category : 'baselines' }
BaselineOfDragon >> postload: loader package: packageSpec [
	"do nothing"


]

{ #category : 'baselines' }
BaselineOfDragon >> preload: loader package: packageSpec [
	"do nothing"


]

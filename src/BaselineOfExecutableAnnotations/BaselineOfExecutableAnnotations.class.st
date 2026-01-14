Class {
	#name : 'BaselineOfExecutableAnnotations',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfExecutableAnnotations-Core',
	#package : 'BaselineOfExecutableAnnotations',
	#tag : 'Core'
}

{ #category : 'baselines' }
BaselineOfExecutableAnnotations >> baseline: spec [
	"Common baseline for all Pharo versions"

	<baseline>
	spec for: #common do: [ self baselineForCommon: spec ]
]

{ #category : 'baselines' }
BaselineOfExecutableAnnotations >> baselineForCommon: spec [

	<baseline>
	spec preLoadDoIt: #preload:package:.
	spec postLoadDoIt: #postload:package:.

	"Dependencies"
	self commonDependencies: spec.

	"Packages"
	self commonPackages: spec
]

{ #category : 'baselines' }
BaselineOfExecutableAnnotations >> commonDependencies: spec [

	spec
		baseline: 'XPath'
		with: [
		spec repository: 'github://pharo-contributions/XML-XPath/src' ]
]

{ #category : 'baselines' }
BaselineOfExecutableAnnotations >> commonPackages: spec [

	spec package: 'ExecutableAnnotations'.

	"tests packages"
	spec
		package: 'ExecutableAnnotations-Example'
		with: [ spec requires: #( 'ExecutableAnnotations' ) ]
]

{ #category : 'baselines' }
BaselineOfExecutableAnnotations >> postload: loader package: packageSpec [
	"do nothing"


]

{ #category : 'baselines' }
BaselineOfExecutableAnnotations >> preload: loader package: packageSpec [
	"do nothing"


]

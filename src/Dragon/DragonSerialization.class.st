Class {
	#name : 'DragonSerialization',
	#superclass : 'Object',
	#category : 'Dragon-Serialization',
	#package : 'Dragon',
	#tag : 'Serialization'
}

{ #category : 'private' }
DragonSerialization >> serializeForScript: anObject [

	| multipleRefsObjects makeScript namedReferences |
	
	multipleRefsObjects := self stepsToCreateReferences: anObject.
	namedReferences := DragonNamedReferences new
		                   multiReferences:
			                   multipleRefsObjects multiReferences;
		                   build.
	makeScript := DragonMakeScript new
		              references: multipleRefsObjects references;
		              rootReference: multipleRefsObjects rootReference;
		              nameReferenceDictionary:
			              namedReferences referencesAndNamesDictionary;
		              build.

	^ makeScript serializedString
]

{ #category : 'private' }
DragonSerialization >> stepsToCreateReferences: aRootObject [

	| makeAllRelations separateRelations multipleRefsObjects |
	makeAllRelations := DragonMakeAllRelations new
		                    rootObject: aRootObject;
		                    build.
	separateRelations := DragonSeparateRelations new
		                     relations: makeAllRelations relations;
		                     build.
	multipleRefsObjects := DragonMakeAllReferences new
		                       sourcesDictionary:
			                       separateRelations sourcesDictionary;
		                       targetsDictionary:
			                       separateRelations targetsDictionary;
		                       rootObject: aRootObject;
		                       build.
	^ multipleRefsObjects
]

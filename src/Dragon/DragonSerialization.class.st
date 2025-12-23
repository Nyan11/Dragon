Class {
	#name : 'DragonSerialization',
	#superclass : 'Object',
	#category : 'Dragon-Serialization',
	#package : 'Dragon',
	#tag : 'Serialization'
}

{ #category : 'private' }
DragonSerialization >> serializeForScript: anObject [

	| makeAllRelations separateRelations multipleRefsObjects makeScript namedReferences |
	makeAllRelations := DragonMakeAllRelations new
		                    rootObject: anObject;
		                    build.
	separateRelations := DragonSeparateRelations new
		                     relations: makeAllRelations relations;
		                     build.
	multipleRefsObjects := DragonMakeAllReferences new
		                       sourcesDictionary:
			                       separateRelations sourcesDictionary;
		                       targetsDictionary:
			                       separateRelations targetsDictionary;
		                       rootObject: anObject;
		                       build.
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

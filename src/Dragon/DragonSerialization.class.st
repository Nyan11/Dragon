Class {
	#name : 'DragonSerialization',
	#superclass : 'Object',
	#category : 'Dragon',
	#package : 'Dragon'
}

{ #category : 'private' }
DragonSerialization >> serialize: anObject [

	| makeAllRelations separateRelations |
	makeAllRelations := DragonMakeAllRelations new
		                    rootObject: anObject;
		                    build.
	separateRelations := DragonSeparateRelations new
		                     relations: makeAllRelations relations;
		                     build.
	self halt
]

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
		                   yourself.
	makeScript := DragonMakeScript new
		              rootReference: multipleRefsObjects rootReference;
		              nameReferenceDictionary: namedReferences nameReferenceDictionary;
		              build.
	^ makeScript serializedString
]

Class {
	#name : 'OtCSerialization',
	#superclass : 'Object',
	#category : 'ObjectsToCode-Serialization',
	#package : 'ObjectsToCode',
	#tag : 'Serialization'
}

{ #category : 'private' }
OtCSerialization >> serializeForScript: anObject [

	| multipleRefsObjects makeScript namedReferences |
	
	multipleRefsObjects := self stepsToCreateReferences: anObject.
	namedReferences := OtCNamedReferences new
		                   multiReferences:
			                   multipleRefsObjects multiReferences;
		                   build.
	makeScript := OtCMakeScript new
		              references: multipleRefsObjects references;
		              rootReference: multipleRefsObjects rootReference;
		              nameReferenceDictionary:
			              namedReferences referencesAndNamesDictionary;
		              build.

	^ makeScript serializedString
]

{ #category : 'private' }
OtCSerialization >> stepsToCreateReferences: aRootObject [

	| makeAllRelations separateRelations multipleRefsObjects |
	makeAllRelations := OtCMakeAllRelations new
		                    rootObject: aRootObject;
		                    build.
	separateRelations := OtCSeparateRelations new
		                     relations: makeAllRelations relations;
		                     build.
	multipleRefsObjects := OtCMakeAllReferences new
		                       sourcesDictionary:
			                       separateRelations sourcesDictionary;
		                       targetsDictionary:
			                       separateRelations targetsDictionary;
		                       rootObject: aRootObject;
		                       build.
	^ multipleRefsObjects
]

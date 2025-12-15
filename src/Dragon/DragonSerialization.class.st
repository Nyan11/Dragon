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

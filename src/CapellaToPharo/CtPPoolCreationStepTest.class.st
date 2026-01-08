Class {
	#name : 'CtPPoolCreationStepTest',
	#superclass : 'CtPTest',
	#category : 'CapellaToPharo',
	#package : 'CapellaToPharo'
}

{ #category : 'tests' }
CtPPoolCreationStepTest >> testCapabilitiesRules [

	| poolCreationStep |
	poolCreationStep := CtPPoolCreationStep new
		                    file: file;
		                    rules: { (CtPPathBasedRule new
				                     path: '//ownedOperationalCapabilities';
				                     associates: 'involved'
				                     withPath:
					                     'ownedEntityOperationalCapabilityInvolvements/@involved';
				                     yourself) };
		                    build.
	self assert: poolCreationStep rules size equals: 1.
	self assert: poolCreationStep capellaObjects size equals: 6.
	self halt.
]

{ #category : 'tests' }
CtPPoolCreationStepTest >> testEntitiesRules [

	| poolCreationStep |
	poolCreationStep := CtPPoolCreationStep new
		                    file: file;
		                    rules: { (CtPPathBasedRule new
				                     path: '//ownedEntities';
				
				                     yourself) };
		                    build.
	self assert: poolCreationStep rules size equals: 1.
	self assert: poolCreationStep capellaObjects size equals: 6.
	self halt.
]

{ #category : 'tests' }
CtPPoolCreationStepTest >> testModelImport [

	| poolCreationStep |
	poolCreationStep := CtPModelImport new
		                    file: file;
		                    build.
	self fail.
]

{ #category : 'tests' }
CtPPoolCreationStepTest >> testNoRules [

	| poolCreationStep |
	poolCreationStep := CtPPoolCreationStep new file: file; rules: {  }; build.
	self assert: poolCreationStep rules isEmpty.
	self assert: poolCreationStep capellaObjects isEmpty.
]

{ #category : 'tests' }
CtPPoolCreationStepTest >> testSameRuleTwice [

	| poolCreationStep |
	poolCreationStep := CtPPoolCreationStep new
		                    file: file;
		                    rules: { (CtPPathBasedRule new
				                     path: '//ownedEntities';
				                     yourself).
				CtPPathBasedRule path: '//ownedEntities' };
		                    build.
	self assert: poolCreationStep rules size equals: 1.
	self assert: poolCreationStep capellaObjects size equals: 6
]

clone-tests
testCloneHasDifferentClass
	otroObo := obo clone.
	self assert: ((OBPharoReflection uniqueInstance classOf: obo baseObject) ~= (OBPharoReflection uniqueInstance classOf: otroObo baseObject)).
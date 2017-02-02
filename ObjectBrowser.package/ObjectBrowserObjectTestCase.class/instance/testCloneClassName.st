clone-tests
testCloneClassName
	otroObo := obo clone.
	self assert: ((OBPharoReflection uniqueInstance classNameOfObject: obo baseObject) beginsWith: OBObject name).
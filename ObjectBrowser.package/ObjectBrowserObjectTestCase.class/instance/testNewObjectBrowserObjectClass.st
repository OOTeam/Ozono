realClass-tests
testNewObjectBrowserObjectClass
	self assert: ((OBPharoReflection uniqueInstance classNameOfObject: obo baseObject) beginsWith: OBObject name).
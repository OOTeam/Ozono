tests
testCollectionsCreatedWithClassesWorkInTests
	|test|
	test := currentLesson compileTest: 'testHelloNurse
	| col |
	col := OrderedCollection new.
	col add: 1.
	col add: 2.
	self assert: col size equals: 2.'.
	
	self assert: test run isSuccess.
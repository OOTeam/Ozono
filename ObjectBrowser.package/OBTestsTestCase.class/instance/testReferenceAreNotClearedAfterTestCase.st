as yet unclassified
testReferenceAreNotClearedAfterTestCase
	| test |
	self assert: (currentLesson hasVariableNamed: 'pepita').
	test := currentLesson compileTest: 'simpleTest
		self assert: pepita isSwallow.' notifying: nil.
		
	test run.
	
	self assert: (currentLesson hasVariableNamed: 'pepita').
	self assert: (currentLesson variableNamed: 'pepita') pointsTo = pepita.
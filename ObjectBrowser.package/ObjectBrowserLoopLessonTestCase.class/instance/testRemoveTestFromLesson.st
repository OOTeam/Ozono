as yet unclassified
testRemoveTestFromLesson
	| test |
	lesson := self prepareLessonWithTest.
	test := lesson tests first .
	self assert: (lesson executionContext class selectors includes: test selector) description: 'Execution context class selectors do not include the test''s selector before removal'.
	lesson removeTest: test.
	self deny: (lesson tests includes: test) description: 'The test was not removed from the lesson'.
	self deny: (lesson executionContext class selectors includes: test selector) description: 'The test was not removed from the lesson''s execution context'
testing
runAllTests
	| results |
	results := self lesson runAllTests.
	(self dependants detect: [ :d | d isKindOf: OBLessonWindow ]) setTestsResults: results.
	self changed.
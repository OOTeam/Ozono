tests
runAllTests
	| results |
	results := OBTestCaseResult new.
	self runnableTests do: [ :t | results add: t run ].
	^ results
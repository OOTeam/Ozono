running
run

	| context |
	context := lesson executionContext.
	context prepare.
	context setTestSelector: self selector.
	[ ^ result := self runContext: context ] ensure: [
		"We restore the lesson in the context because the test framework wipes all the variables in it and puts a nil in them"
		context lesson: lesson.
		"We restore the variables also."
		context prepare.
	]
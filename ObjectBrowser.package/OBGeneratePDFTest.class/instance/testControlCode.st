tests
testControlCode
	|  expectedValue |
	expectedValue := self formattedDate , '-anAuthor-A Test Lesson'.	
	self assert:lessonToPDF controlCode base64Decoded = expectedValue.
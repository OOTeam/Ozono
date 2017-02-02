tests
testIsEmpty
	self assert: self collection isEmpty.
	self putSomeElements .
	self assert: self collection isEmpty not.
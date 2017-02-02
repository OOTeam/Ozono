tests
testRemove
	self putSomeElements .
	self assert: (self collection includes: 5).
	self collection remove: 5.
	self assert: (self collection includes: 5) not.
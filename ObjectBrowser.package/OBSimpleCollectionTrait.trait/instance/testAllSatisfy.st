tests
testAllSatisfy
	self putSomeElements.
	self assert:  (self collection allSatisfy: [:num|num>3]).
	self assert:  (self collection allSatisfy: [:num|num>100]) not.
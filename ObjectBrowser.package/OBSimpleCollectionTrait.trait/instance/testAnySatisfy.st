tests
testAnySatisfy
	self putSomeElements.
	self assert:  (self collection anySatisfy: [:num|num>7]).
	self assert:  (self collection anySatisfy: [:num|num>100]) not.
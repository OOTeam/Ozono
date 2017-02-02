tests
testInjectInto
	self putSomeElements.
	self assert: 19 equals: (self collection inject: 0 into:[:tot :e | tot+e] ).
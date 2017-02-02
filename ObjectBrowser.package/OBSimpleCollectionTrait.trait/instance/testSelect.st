as yet unclassified
testSelect
	self putSomeElements .
	self assert: (self collection  includes: 5).
	self assert: ((self collection  select: [:e| e >5]) includes: 5) not.
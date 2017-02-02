tests
testUknownVariableIsUnknown

	self deny: (pepita baseObject class instVarNames includes: 'anUnknownVariable').
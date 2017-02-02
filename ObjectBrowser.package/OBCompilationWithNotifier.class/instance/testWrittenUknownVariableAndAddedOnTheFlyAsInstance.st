tests
testWrittenUknownVariableAndAddedOnTheFlyAsInstance

	[
		pepita compileMethod: code notifying: self mockNotifier.
	] on: OCUndeclaredVariableWarning do: [ :notification |
		notification declareInstVar: notification node name.
	].
	self assert: (pepita baseObject class instVarNames includes: self unknownVariableName).
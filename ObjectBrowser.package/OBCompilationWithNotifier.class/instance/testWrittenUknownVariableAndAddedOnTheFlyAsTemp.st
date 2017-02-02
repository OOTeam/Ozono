tests
testWrittenUknownVariableAndAddedOnTheFlyAsTemp

	[
		pepita compileMethod: code notifying: self mockNotifier.
	] on: OCUndeclaredVariableWarning do: [ :notification |
		notification declareTempAndPaste: notification node name.
	].
	self deny: (pepita baseObject class instVarNames includes: self unknownVariableName).
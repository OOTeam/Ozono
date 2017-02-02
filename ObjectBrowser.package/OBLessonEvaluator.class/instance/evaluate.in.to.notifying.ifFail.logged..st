public access
evaluate: textOrStream in: aContext to: receiver notifying: aRequestor ifFail: failBlock logged: logFlag

	receiver prepare.
	^OBErrorHandler evaluate:  [[
		Compiler new
			evaluate: textOrStream 
			in: aContext 
			to: receiver 
			notifying: aRequestor 
			ifFail: failBlock 
			logged: logFlag.]
	ensure: [ receiver commitChanges ]]
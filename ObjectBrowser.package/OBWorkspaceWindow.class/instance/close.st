as yet unclassified
close
	(self hasUnacceptedEdits and: [ UIManager default confirm: (self acceptUnsavedChangesMessage) trueChoice: 'Si' falseChoice: 'No' ])
		ifTrue: [ workspace accept ].
	 ^super close.
	
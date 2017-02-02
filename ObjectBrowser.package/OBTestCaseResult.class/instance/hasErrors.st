testing
hasErrors
	^self results anySatisfy: [ :r | r isError ].
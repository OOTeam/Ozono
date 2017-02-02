testing
hasFailures
	^self results anySatisfy: [ :r | r isFailure ].
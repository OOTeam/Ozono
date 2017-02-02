accessing
succeededTests
	^self results select: [ :r | r isSuccess ].
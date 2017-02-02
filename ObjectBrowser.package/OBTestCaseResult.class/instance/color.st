ui
color
	self hasErrors 
		ifTrue: [ ^ Color red ].
	self hasFailures 
		ifTrue: [ ^ Color yellow ].
	^Color green
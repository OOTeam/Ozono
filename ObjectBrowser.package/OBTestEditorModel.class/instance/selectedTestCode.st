as yet unclassified
selectedTestCode
	| c |
	c := self model selectedTest ifNotNil: [ :t | t code ].
	^c
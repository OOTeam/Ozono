accessing
selectedTestResultDescription
	self selectedTest ifNil: [ ^ '' ].
	^self selectedTest resultDescription
	
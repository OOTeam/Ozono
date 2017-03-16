as yet unclassified
acceptContents: aString

	self fileName ifNotNil: [ self saveString: aString toFile: self fileName ].

	acceptAction ifNotNil:[acceptAction value: aString].
	self contents: aString.
	self textMorph setText: aString.
	^ true
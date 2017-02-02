create elements
linesIn: text
	^ (text subStrings: String crlf)
		reject: #isAllSeparators
		thenCollect: [ :line | self replaceTabs: line ].
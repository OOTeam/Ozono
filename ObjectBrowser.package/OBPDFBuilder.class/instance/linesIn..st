create elements
linesIn: text
	^ (text substrings: String crlf)
		reject: #isAllSeparators
		thenCollect: [ :line | self replaceTabs: line ].
create elements
createCode: text
	(self linesIn: text) do: [ :line | self createText: line withStyle: self codeStyleSheet ].
	self createCodeSeparatorLine.
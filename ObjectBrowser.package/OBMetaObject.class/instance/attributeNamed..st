attributes
attributeNamed: varName

	^self attributes detect: [:v | v name = varName ].
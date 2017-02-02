private
request: aTitle default: aDefaultValue

	^ UIManager default
		request: aTitle
		initialAnswer: aDefaultValue
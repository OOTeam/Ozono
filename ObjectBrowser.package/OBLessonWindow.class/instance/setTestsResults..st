accessing
setTestsResults: result
	statusTextMorph contents: result printString.
	statusMorph color: result color
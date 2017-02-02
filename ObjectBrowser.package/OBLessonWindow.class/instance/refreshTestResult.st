view
refreshTestResult
	| selectedTest |
	selectedTest := self objectBrowser selectedTest.
	selectedTest isNotNil & selectedTestResultTextMorph isNotNil
		ifTrue: [ 
			selectedTestResultTextMorph update: selectedTestResultTextMorph getTextSelector.
			selectedTestResultBoxMorph color: selectedTest resultColor ]
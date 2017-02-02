menues
createTest: testLabel contents: someContents
	| testCase |
	testCase := self lesson compileTest: someContents notifying: nil.
	self selectedItem: testCase.
	self changed.
	^testCase
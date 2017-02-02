tests
testConstantSelectorListsForLiteral: aSymbol
	| aCollection |
	aCollection := (currentLesson literalNamed: aSymbol) clone.
	self assert: aCollection metaObject selectorsToDisplay == aCollection metaObject selectorsToDisplay
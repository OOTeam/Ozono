accessing
treeContents

	^objectBrowser variables collect:[:v | OBListItemWrapper with: v model: v ]
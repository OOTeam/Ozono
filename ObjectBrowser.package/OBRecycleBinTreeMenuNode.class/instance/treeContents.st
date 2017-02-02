accessing
treeContents

	^objectBrowser orphanObjects collect: [ :o | OBListItemWrapper with: o model: o ]
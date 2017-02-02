view
refreshPagesVisibility
	pages keysAndValuesDo: [ :k :v | v visible: k == self objectBrowser selectedPage ]
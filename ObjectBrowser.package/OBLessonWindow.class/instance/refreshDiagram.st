view
refreshDiagram
	self objectBrowser selectedPage = #diagram
		ifTrue: [ diagram update ]
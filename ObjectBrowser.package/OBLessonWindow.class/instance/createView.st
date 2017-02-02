view
createView
	| window |
	self createGroupTab.
	window := (SystemWindow labelled: self objectBrowser title, ' - Ozono') 
		model: self objectBrowser;
		addMorph: self buildObjectBrowserTree
			frame: (0@0 corner: 0.2@1).
	
	window onAnnouncement: MorphDeleted send: #closeWorkspaces to: self objectBrowser.
	
	pages keysAndValuesDo: [ :k :m |
			window addMorph: m frame: (0.2@0 corner: 1@1).
			m visible: k == self objectBrowser selectedPage.
			m color: (self backgroundColorFor: k).
		].
	window center: World center.
	self objectBrowser changed.
	^window.
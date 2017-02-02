view
buildObjectBrowserTree
	objectBrowserTree := (PluggableTreeMorphWithDoubleClick 
		on: self objectBrowser
		list: #lessonOrganization
		selected: #selectedItem
		changeSelected: #selectedItem:
		menu: #selectedItemMenu:
		keystroke: nil).
	objectBrowserTree doubleClickSelector: #openInWorld.
	^objectBrowserTree
			
view
refreshObjectBrowserTree
	objectBrowserTree
		ifNotNil: [ 
			objectBrowserTree list: self objectBrowser lessonOrganization.
			objectBrowserTree selection: self objectBrowser selectedItem ]
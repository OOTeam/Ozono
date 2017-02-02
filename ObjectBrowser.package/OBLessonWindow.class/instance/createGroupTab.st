view
createGroupTab
	pages at: #objects put: self createObjectEditionTab.
	pages at: #tests put: self createTestRunnerTab.
	pages at: #diagram put: self createObjectDiagramTab.
test-runner
createTestRunnerTab
	|  panel   |
	panel := PanelMorph new
		color: Color gray;
		changeProportionalLayout.
	self addNewEditorMorphTo: panel.	
	self addNewStatusMorphTo: panel.
	self addNewRunAllTestsButtonMorphTo: panel.
	self addNewSelectedTestResultMorphTo: panel.
	^ panel
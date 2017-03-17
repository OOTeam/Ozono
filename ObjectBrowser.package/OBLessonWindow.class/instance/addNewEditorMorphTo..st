test-runner
addNewEditorMorphTo: panel
	| testEditor hSepFrac testEditorModel |
	hSepFrac := 0.45.
	testEditor := (OBMethodEditorMorph
		on: (testEditorModel := OBTestEditorModel newOn: self objectBrowser)
		text: #selectedTestCode
		accept: #acceptCode:notifying:
		readSelection: nil
		menu: #menu:)
		setNameTo: #textoTest;
		color: Color white;
		yourself.
	testEditor beForSmalltalkCodeWithDefaultFont.
	testEditor beEditable.
	testEditor withoutLineNumbers.
	testEditor withCodeSizeFeedback.
	self objectBrowser addTestSelectionInterested: testEditor.
	testEditorModel testEditorMorph: testEditor.

	panel
		addMorph:
			((PluggableIconListMorph
				on: (OBTestsListModel newOn: self objectBrowser)
				list: #listModel
				selected: #listIndex
				changeSelected: #listIndex:
				menu: #listMenu:shifted:
				keystroke: #listKey:from:)
				borderWidth: 0;
				enableDragNDrop: false;
				autoDeselect: true;
				getIconSelector: #iconAt:;
				yourself)
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 0.4999 @ hSepFrac - 0.01)).
	panel addMorph: testEditor fullFrame: (LayoutFrame fractions: (0 @ hSepFrac corner: 1 @ 1)).
	^ panel
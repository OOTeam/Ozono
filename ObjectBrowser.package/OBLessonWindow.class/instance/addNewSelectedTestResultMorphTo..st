test-runner
addNewSelectedTestResultMorphTo: panel
	panel
		addMorph:
			(selectedTestResultBoxMorph := PanelMorph new
				changeProportionalLayout;
				yourself)
		fullFrame: (LayoutFrame fractions: (0.499 @ 0.21 corner: 0.99 @ 0.44)).
	selectedTestResultBoxMorph
		addMorph:
			((selectedTestResultTextMorph := PluggableTextMorph on: self objectBrowser text: #selectedTestResultDescription accept: nil)
				disable;
				yourself)
		fullFrame: (LayoutFrame fractions: (0.1 @ 0.1 corner: 0.9 @ 0.9))
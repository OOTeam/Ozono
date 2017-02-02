test-runner
addNewRunAllTestsButtonMorphTo: panel
	panel
		addMorph:
			(PluggableButtonMorph
				on: self objectBrowser
				getState: nil
				action: #runAllTests
				label: #runAllTestsLabel)
		fullFrame: (LayoutFrame fractions: (0.499 @ 0.1 corner: 0.99 @ 0.2))
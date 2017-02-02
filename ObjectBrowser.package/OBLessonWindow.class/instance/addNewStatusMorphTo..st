test-runner
addNewStatusMorphTo: panel
	panel
		addMorph:
			(statusMorph := PanelMorph new
				changeProportionalLayout;
				yourself)
		fullFrame: (LayoutFrame fractions: (0.499 @ 0 corner: 0.99 @ 0.09)).
	statusMorph color: Color green.
	statusMorph
		addMorph:
			(statusTextMorph := LabelMorph new
				color: Color black;
				contents: '';
				yourself)
		fullFrame: (LayoutFrame fractions: (0.1 @ 0.1 corner: 0.9 @ 0.9))
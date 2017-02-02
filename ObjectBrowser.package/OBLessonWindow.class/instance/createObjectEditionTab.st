view
createObjectEditionTab
	| hSepFrac panel |
	hSepFrac := 0.45.
	panel := PanelMorph new
		color: (Color gray);
		changeProportionalLayout;
		addMorph: self buildObjectAttributeList 
		fullFrame: (LayoutFrame fractions: (0@0 corner: 0.4999 @ hSepFrac -0.01));
		addMorph: self buildMethodList
		fullFrame: (LayoutFrame fractions: (0.50001@ 0 corner: 1.01 @ hSepFrac -0.01));
		addMorph: self buildMethodEditor
		fullFrame: (LayoutFrame fractions: (0@hSepFrac corner: 1 @ 1)).
	methodEditor color: Color white.
	panel color: Color lightGray.
	^panel.
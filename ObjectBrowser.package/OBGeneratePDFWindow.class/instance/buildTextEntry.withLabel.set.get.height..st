view
buildTextEntry:topStart withLabel:aLabel set:aSetSelector get:aGetSelector height:height.	
	self addMorph: (self newText: aLabel) frame: (0 @ topStart corner: 0.2 @ (topStart+height)).
	self
		addMorph:
			(self
				newTextEntryFor: self model
				getText: aGetSelector
				setText: aSetSelector
				getEnabled: nil
				help: nil)
		frame: (0.2 @ topStart corner: 1 @ (topStart + height))
view
buildButtons: top height: height
	| b b2 |
	b := self
		newButtonFor: self
		action: #generate
		label: model generateLabel
		help: nil.
	self addMorph: b frame: (0.3 @ top corner: 0.6 @ (top + height)).

	b2 := self
		newButtonFor: self
		action: #cancel
		label: model cancelLabel
		help: nil.
	self addMorph: b2 frame: (0.6 @ top corner: 0.9 @ (top + height))
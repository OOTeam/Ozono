as yet unclassified
openLabel: labelString
	"Overrides to introduce a template method to change the window's concrete class"
	| w  panel |
	w := (self createWindow: labelString) model: self.
	panel := self buildTextMorph.
	w addMorph: panel frame: (0@0 corner: 1@1).
	w openInWorld.
	^ w
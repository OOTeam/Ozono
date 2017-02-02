*ObjectBrowser
shrinkToContent
	| lines newD |
	self dimension: self dimension x @ 1000mm.
	lines := self splitOn: nil using: self styleSheet font.
	newD := self dimension x @ (self styleSheet font fontSize + (2 * self styleSheet margin) * (lines size+1)). 
	self dimension:newD.
showing/creation
openInWorld
	(window = nil) 
		ifTrue: [ window := self openLabel: self label ]
		ifFalse: [ 
			(window isDisplayed) ifTrue: [ window activate  ] ifFalse: [  window := self openLabel: self label ]
		]
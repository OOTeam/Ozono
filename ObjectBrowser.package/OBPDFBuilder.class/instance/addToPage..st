create elements
addToPage: element
	| height maxPos newFrom |
	height := (element dimension y as:#millimetre) value.
	maxPos := self currentTop + height.

	height > self usableHeight
		ifTrue: [ self error: 'The element ' , element asString , ' is bigger than a page' ].
			
	maxPos > self maxTop
		ifTrue: [ 
			self newPage.
			self addToPage: element ]
		ifFalse: [ 
			newFrom := element from + (0@self currentTop mm).
			element from: newFrom.
			self addBoxFor:element.
			page add: element ]
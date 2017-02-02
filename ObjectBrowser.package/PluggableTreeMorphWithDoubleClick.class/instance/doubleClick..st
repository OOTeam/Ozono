as yet unclassified
doubleClick: event
	doubleClickSelector ifNil: [^super doubleClick: event].
	^ (self selectedItemFrom: event) perform: doubleClickSelector
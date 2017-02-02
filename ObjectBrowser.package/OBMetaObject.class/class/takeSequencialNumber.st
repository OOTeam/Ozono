instance-creation
takeSequencialNumber

	NextObjectBrowserClassNumber in: [ :next | 
		NextObjectBrowserClassNumber := next + 1.
		^next
	]
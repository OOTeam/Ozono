calculated
controlCode
	| seed |
	seed := self formattedDate , '-' , self author , '-' , self lesson title.
	^ seed base64Encoded
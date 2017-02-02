accessing
filename
	^ filename ifNil:[ filename := self lesson title , ' - ' , self author , '.pdf']
template
writeScriptHeader

	self write: self class fileOutVersionHeader3.
	self cr.
	self write: '| '.
	
	self write: (' ' join: (lesson objects collect: #posibleName)).
	self write: ' '.
	self write: self lessonIdentification.
	self write: ' |'.
	self cr.
	self cr.
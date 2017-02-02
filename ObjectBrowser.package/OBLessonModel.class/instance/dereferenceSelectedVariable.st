accessing
dereferenceSelectedVariable
	self selectedObjectBrowserVariable desreference.
	self selectDereferencedObject: self selectedObjectBrowserVariable.
	self changed .
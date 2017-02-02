instance-creation
createNewObjectBrowserObjectClassIn: aLesson
	^ aLesson
		createClass: (OBObject name, self takeSequencialNumber asString) asSymbol
		subclassOf: OBObject
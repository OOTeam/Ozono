menues
orphanObjects
	^(self lesson dereferencedObjects) collect: [ :o | OBDereferencedObject newOn: o].
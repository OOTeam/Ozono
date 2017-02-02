labels
aboutText
	^(TextStream on: String new)
		nextPutAll: 'Ozono version: ', (ConfigurationOfObjectBrowser project currentVersion) versionString;
		crlf;
		nextPutAll: 'Ozono mcz: ', OBLessonToPDF new ozonoVersion ;
		crlf;		
		nextPutAll: 'Pharo version: ' , OBLessonToPDF new pharoVersion ;
		crlf;
		nextPutAll: 'VM version: ' , OBLessonToPDF new vmVersion ;
		crlf;
		nextPutAll: 'OS version: ' , OBLessonToPDF new operatingSystem ;
		contents.
classes
makeClass: aSubclass subclassOf: aSuperclass

	OBPharoSystem uniqueInstance suspendSystemEventsWhile: [
		aSuperclass subclass: aSubclass name asSymbol
			instanceVariableNames: aSubclass instanceVariablesString
			classVariableNames: aSubclass classVariablesString
			poolDictionaries: aSubclass sharedPoolsString 
			category: aSubclass category.
	] 
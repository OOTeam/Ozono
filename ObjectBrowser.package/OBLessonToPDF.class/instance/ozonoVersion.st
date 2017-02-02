calculated
ozonoVersion
	|wc|
	wc := (MCWorkingCopy hasPackageNamed:'ObjectBrowser').
	^wc ancestry ancestorStringWithout: wc packageName
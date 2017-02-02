builder
buildInfo
	self createLabel: 'Sistema Operativo:' translated withText: self model operatingSystem.
	self createLabel: 'Fecha y Hora:' translated withText: self model date asString.
	self createLabel: 'Pharo:' translated withText: self model pharoVersion.
	self createLabel: 'Ozono:' translated withText: self model ozonoVersion.
	self createLabel: 'Codigo Control:' translated withText: self model formattedControlCode.
	self createLabel: 'VM:' translated withText: self model vmVersion
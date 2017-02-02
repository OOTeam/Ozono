as yet unclassified
createContent.
	self createHeading: 'Información Adicional' withHeight:15 onTop: 0.
	self createLabel: 'Sistema Operativo:' translated withText: self model operatingSystem withHeight: 15 onTop: 10.
	self createLabel: 'Fecha y Hora:' translated withText: self model date asString withHeight: 15 onTop: 35.
	self createLabel: 'Pharo:'  translated withText: self model pharoVersion withHeight: 15 onTop: 50.
	self createLabel: 'Ozono:'  translated withText: self model ozonoVersion withHeight: 15 onTop: 65.
	self createLabel: 'Codigo Control:'  translated withText: self model formattedControlCode withHeight: 15 onTop: 80.
	self createLabel: 'VM:'  translated withText: self model vmVersion withHeight: 80 onTop: 95.

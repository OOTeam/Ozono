accessing
formattedDate
	^ self date dayMonthYearDo: [ :d :m :y | d asString , '/' , m asString , '/' , y asString ].

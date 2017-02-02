utils
formattedDate
	^DateAndTime now dayMonthYearDo: [ :d :m :y | d asString , '/' , m asString , '/' , y asString ]. 
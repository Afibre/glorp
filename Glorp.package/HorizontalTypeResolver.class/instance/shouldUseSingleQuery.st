accessing
shouldUseSingleQuery
	"Return true if we should attempt to combine queries for multiple subclasses in disjoint tables into one."

	shouldUseSingleQuery isNil ifTrue: [shouldUseSingleQuery := false].
	^shouldUseSingleQuery.
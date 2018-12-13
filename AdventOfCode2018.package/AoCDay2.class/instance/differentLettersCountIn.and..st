as yet unclassified
differentLettersCountIn: firstString and: secondString

	| equalities |
	equalities := self elementwiseEqualityOf: firstString and: secondString.	
	^ equalities count: [ :x | x not ]
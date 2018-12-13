as yet unclassified
solutionPart2 

	| pair first second equalities |
	
	pair := self findPairThatDiffersInOneLetter.
	first := pair first.
	second := pair second.
	
	equalities := self elementwiseEqualityOf: first and: second.
	^ first copyWithoutIndex: (equalities indexOf: false).
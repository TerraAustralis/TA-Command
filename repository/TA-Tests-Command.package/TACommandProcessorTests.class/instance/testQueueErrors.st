testing
testQueueErrors
	| systemProcessor command1 |
	TACommandProcessor resetSystemProcessor.
	systemProcessor := TACommandProcessor systemProcessor.
	self assert: systemProcessor isEmpty.
	command1 := self commandForTesting.
	command1 doIt.
	self should: [ command1 doIt ] raise: TACommandAlreadyQueuedError 
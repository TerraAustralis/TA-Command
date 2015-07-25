processing commands
processCommand: aCommand
	(queue contains: aCommand)
		ifTrue: [ TACommandAlreadyQueuedError signalForCommand: aCommand ].
	queue nextPut: aCommand
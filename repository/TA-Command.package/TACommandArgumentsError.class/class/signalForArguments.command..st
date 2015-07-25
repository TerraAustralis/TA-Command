signaling
signalForArguments: arguments command: command 
	^ self new
		initializeWithArguments: arguments command: command;
		signal
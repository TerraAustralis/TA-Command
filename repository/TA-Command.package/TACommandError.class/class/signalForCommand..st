signaling
signalForCommand: command 
	^ self new
		initializeWithCommand: command;
		signal
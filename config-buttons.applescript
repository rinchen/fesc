on clicked theObject
	if name of theObject is "cancel" then
		try
			close panel (window of theObject)
		on error
			display dialog "Error closing configuration panel (try)"
		end try
	else if name of theObject is "save" then
		try
			close panel (window of theObject) with result 1
		on error
			display dialog "Error closing configuration panel (try)"
		end try
	else
		-- should never get here
		display dialog "config-buttons.applescript was passed a bad object named:" & (name of theObject)
	end if
end clicked


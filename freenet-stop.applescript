on clicked theObject
	try
		-- Read in the preferences
		set theLocation to POSIX path of (call method "defaultObjectForKey:" with parameter "location")
		do shell script "cd " & theLocation & ";sh stop-freenet.sh"
		tell progress indicator "progress" of window "main" to stop
	on error
		display dialog "Freenet server specified in freenet.pid is not running."
		tell progress indicator "progress" of window "main" to stop
	end try
end clicked

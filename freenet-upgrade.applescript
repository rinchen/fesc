
on clicked theObject
	-- Read in the preferences
	set theLocation to POSIX path of (call method "defaultObjectForKey:" with parameter "location")
	
	try
		do shell script "cd " & theLocation & ";sh stop-freenet.sh"
		tell progress indicator "progress" of window "main" to stop
	on error
		-- do nothing as freenet may already be stopped
	end try
	try
		do shell script "cd " & theLocation & ";sh update.sh"
		display dialog "Freenet sucessfully upgraded to latest version. You may now restart Freenet."
	on error
		display dialog "Error: I encountered an unknown error trying to execute update.sh. Could update.sh be missing?"
	end try
end clicked


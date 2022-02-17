
on clicked theObject
	-- Read in the preferences
	set theLocation to POSIX path of (call method "defaultObjectForKey:" with parameter "entropy")
	-- no need to stop as the script does that for us and then restarts entropy
	-- tell progress indicator "progress" of window "main" to stop
	try
		do shell script "cd " & theLocation & ";sh update.sh"
		display dialog "Entropy sucessfully upgraded to latest version."
	on error
		display dialog "Error: I encountered an unknown error trying to execute update.sh. Could update.sh be missing?"
	end try
end clicked



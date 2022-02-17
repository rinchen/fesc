on clicked theObject
	-- Read in the preferences
	set theLocation to POSIX path of (call method "defaultObjectForKey:" with parameter "location")
	try
		do shell script "open " & theLocation & "freenet.log"
	on error
		display dialog "Error: freenet.log is missing. If you recently cycled the log and haven't restarted freenet, this is normal."
	end try
end clicked


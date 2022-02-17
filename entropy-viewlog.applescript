on clicked theObject
	-- Read in the preferences
	set theLocation to POSIX path of (call method "defaultObjectForKey:" with parameter "entropy")
	try
		do shell script "open " & theLocation & "entropy.log"
	on error
		display dialog "Error: entropy.log is missing. If you recently cycled the log and haven't restarted entropy, this is normal."
	end try
end clicked


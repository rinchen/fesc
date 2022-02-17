on clicked theObject
	-- Read in the preferences
	set theLocation to POSIX path of (call method "defaultObjectForKey:" with parameter "location")
	
	try
		do shell script "cd " & theLocation & ";sh restore-prev.sh"
		display dialog "Restore Completed."
	on error
		display dialog "Error: I encountered an unknown error trying to execute restore-prev.sh. Could restore-prev.sh be missing? Maybe you have no backup file?"
	end try
end clicked


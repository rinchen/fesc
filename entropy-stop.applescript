on clicked theObject
	try
		-- Read in the preferences
		set theLocation to POSIX path of (call method "defaultObjectForKey:" with parameter "entropy")
		do shell script "cd " & theLocation & ";sh stop.sh"
	on error
		-- didn't put a try on the running of stop.sh because we won't be able to capture the 
		-- the result for display, ergo this really is the try. exec cmd again to get result
		display dialog "Entropy encountered an error while shutting down (stop.sh)"
	end try
	tell progress indicator "eprogress" of window "main" to stop
end clicked


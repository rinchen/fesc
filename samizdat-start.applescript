on clicked theObject
	-- Read in the preferences
	set theLocation to POSIX path of (call method "defaultObjectForKey:" with parameter "samizdat")
	
	try
		set theResult to do shell script "ps -ax | grep  samizdat" as string
		if theResult contains "./samizdat" then
			try
				-- have a try because canceling dialog results in the Gadzooks error
				display dialog "Error: Samizdat is currently running."
				tell progress indicator "sprogress" of window "main" to start
			end try
		else
			try
				do shell script "cd " & theLocation & ";sh run.sh > /dev/null 2>&1 &"
				tell progress indicator "sprogress" of window "main" to start
			on error
				display dialog "Error: Unable to execute run.sh. Might it be missing?"
			end try
		end if
	on error
		display dialog "Gadzooks! I couldn't find 'ps'!!!"
	end try
	
end clicked


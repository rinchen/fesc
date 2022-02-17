on clicked theObject
	-- Read in the preferences
	set theLocation to POSIX path of (call method "defaultObjectForKey:" with parameter "location")
	
	try
		set theResult to do shell script "ps -ax | grep  freenet" as string
		if theResult contains "freenet.node.main" then
			try
				-- enclosed in a try otherwise when dialog is canceled we get the gadzooks message
				display dialog "Error: Freenet is currently running."
				tell progress indicator "progress" of window "main" to start
			end try
		else
			try
				do shell script "cd " & theLocation & ";sh start-freenet.sh > /dev/null 2>&1 &"
				tell progress indicator "progress" of window "main" to start
			on error
				display dialog "Error: Unable to execute start-freenet.sh. Might it be missing?"
			end try
		end if
	on error
		display dialog "Gadzooks! I couldn't find 'ps'!!!"
	end try
end clicked


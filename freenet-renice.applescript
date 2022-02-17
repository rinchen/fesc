on clicked theObject
	-- Read in the preferences
	set theLocation to POSIX path of (call method "defaultObjectForKey:" with parameter "location")
	
	try
		set thePassword to (the text returned of (display dialog "Enter your administrator password:" default answer ""))
		if thePassword is not "" then
			try
				set theResult to do shell script "echo " & thePassword & "| sudo -S renice 0 `cat " & theLocation & "freenet.pid`" as string
				display dialog theResult
			on error
				display dialog "Error: Unknown error issuing renice."
			end try
		else
			display dialog "Error: You did not enter a password."
		end if
	on error
		display dialog "SUDO RENICE error. theResult=" & theResult
	end try
end clicked


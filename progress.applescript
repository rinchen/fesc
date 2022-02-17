on opened theObject
	-- we are starting up the first time
	call method "registerDefaultObjects:forKeys:" with parameters {{"Macintosh HD:Applications:freenet:", "Macintosh HD:Applications:entropy:", "Macintosh HD:Applications:samizdat:"}, {"location", "entropy", "samizdat"}}
	try
		--freenet status
		set theResult to do shell script "ps -ax | grep  freenet" as string
		if theResult contains "freenet.node.main" then
			tell progress indicator "progress" of window "main" to start
		else
			tell progress indicator "progress" of window "main" to stop
			
		end if
		--entropy status
		set theResult to do shell script "ps -ax | grep  entropy" as string
		if theResult contains "./entropy" then
			tell progress indicator "eprogress" of window "main" to start
		else
			tell progress indicator "eprogress" of window "main" to stop
			
		end if
		--samizdat status
		set theResult to do shell script "ps -ax | grep  samizdat" as string
		if theResult contains "./samizdat" then
			tell progress indicator "sprogress" of window "main" to start
		else
			tell progress indicator "sprogress" of window "main" to stop
			
		end if
	on error
		display dialog "Gadzooks! I couldn't find 'ps'!!!"
	end try
	
end opened

on became main theObject
	-- we are unhiding. This is to prevent someone from canceling freenet via the terminal
	try
		--freenet status
		
		set theResult to do shell script "ps -ax | grep  freenet" as string
		if theResult contains "freenet.node.main" then
			tell progress indicator "progress" of window "main" to start
		else
			tell progress indicator "progress" of window "main" to stop
			
		end if
		--entropy status
		set theResult to do shell script "ps -ax | grep  entropy" as string
		if theResult contains "./entropy" then
			tell progress indicator "eprogress" of window "main" to start
		else
			tell progress indicator "eprogress" of window "main" to stop
			
		end if
		--samizdat status
		set theResult to do shell script "ps -ax | grep  samizdat" as string
		if theResult contains "./samizdat" then
			tell progress indicator "sprogress" of window "main" to start
		else
			tell progress indicator "sprogress" of window "main" to stop
			
		end if
	on error
		display dialog "Gadzooks! I couldn't find 'ps'!!!"
	end try
	
end became main

on resigned main theObject
	-- if we are hiding, let's turn off the indicators to save cpu cycles
	tell progress indicator "progress" of window "main" to stop
	tell progress indicator "eprogress" of window "main" to stop
	tell progress indicator "sprogress" of window "main" to stop
end resigned main

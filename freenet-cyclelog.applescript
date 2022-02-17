on clicked theObject
	-- Read in the preferences
	set theLocation to POSIX path of (call method "defaultObjectForKey:" with parameter "location")
	
	try
		do shell script "cd " & theLocation & ";mv -f freenet.log freenet.old.log"
		display dialog "freenet.log successfully copied over to freenet.old.log"
	on error
		display dialog "Error: freenet.log not found."
	end try
end clicked


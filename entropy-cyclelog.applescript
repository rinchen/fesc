on clicked theObject
	-- Read in the preferences
	set theLocation to POSIX path of (call method "defaultObjectForKey:" with parameter "entropy")
	
	try
		do shell script "cd " & theLocation & ";mv -f entropy.log entropy.old.log"
		display dialog "entropy.log successfully copied over to entropy.old.log"
	on error
		display dialog "Error: entropy.log not found."
	end try
end clicked


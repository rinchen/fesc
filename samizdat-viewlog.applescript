on clicked theObject
	-- Read in the preferences
	try
		do shell script "open /var/log/news"
	on error
		display dialog "Error: /var/log/news is missing. If you recently installed Samizdat or you did not setup syslogd, this is normal."
	end try
end clicked


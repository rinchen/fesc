(* ==== Properties ==== *)

property panelWIndow : missing value

(* ==== Event Handlers ==== *)

--- subroutines
on assignvalue(theLine)
	set theValue to ""
	repeat with j from ((offset of "=" in theLine) + 1) to (length of theLine)
		set theValue to theValue & (character j of theLine)
	end repeat
	if theValue = "true" then
		set theValue to true
	else if theValue = "false" then
		set theValue to false
	end if
	return theValue
end assignvalue

on clicked theObject
	-- Read in the preferences
	set theLocation to call method "defaultObjectForKey:" with parameter "entropy"
	-- read config file
	try
		set read_success to true
		set theFile to alias (theLocation & "entropy.conf")
		set fref to (open for access theFile)
		-- need to use unix \n instead of \r
		set configdata to read fref using delimiter "
" as string
		--
		close access fref
		set len to (length of configdata)
		repeat with i from 1 to len
			set theLine to item i of configdata
			if theLine contains "=" then
				--assign variables
				
				if theLine contains "nodename" then
					set nodename to assignvalue(theLine)
					set nodename_line to i
				else if theLine contains "nodeport" then
					set nodeport to assignvalue(theLine)
					set nodeport_line to i
				else if theLine contains "proxyport" then
					set proxyport to assignvalue(theLine)
					set proxyport_line to i
				else if theLine contains "proxyhost" then
					set proxyhost to assignvalue(theLine)
					set proxyhost_line to i
				else if theLine contains "bwlimit=" then
					set bwlimit to assignvalue(theLine)
					set bwlimit_line to i
				else if theLine contains "maxhtl" then
					set maxhtl to assignvalue(theLine)
					set maxhtl_line to i
				else if theLine contains "fcpport" then
					set fcpport to assignvalue(theLine)
					set fcpport_line to i
				else if theLine contains "fcphost" then
					set fcphost to assignvalue(theLine)
					set fcphost_line to i
				else if theLine contains "logLevel" then
					set logLevel to assignvalue(theLine)
					set logLevel_line to i
				else if theLine contains "language=" then
					set language to assignvalue(theLine)
					set language_line to i
				else if theLine contains "password=" then
					set the_password to assignvalue(theLine)
					set the_password_line to i
				else if theLine contains "news_boards=" then
					set news_boards to assignvalue(theLine)
					set news_boards_line to i
				else if theLine contains "news_days=" then
					set news_days to assignvalue(theLine)
					set news_days_line to i
				else if theLine contains "news_nick=" then
					set news_nick to assignvalue(theLine)
					set news_nick_line to i
				end if
			end if
		end repeat
	on error
		display dialog "Error: Encountered problem reading entropy.conf"
		set read_success to false
	end try
	
	-- if good read then display panel
	if read_success then
		
		-- Load the panel. We do this by loading the nib that contains the panel window, and then setting our property to the loaded window. Only do this once, as every time the nib is loaded, it will create new copies of all of the top level objects in the nib.
		try
			if not (exists panelWIndow) then
				load nib "eConfigPanel"
				set panelWIndow to window "eConfig"
			end if
			
			-- Set the state of the items in the panel
			tell panelWIndow
				set contents of text field "nodename" to nodename
				set contents of text field "nodeport" to nodeport
				set contents of text field "proxyport" to proxyport
				set contents of text field "proxyhost" to proxyhost
				set contents of text field "bwlimit" to bwlimit
				set contents of text field "maxhtl" to maxhtl
				set contents of text field "fcpport" to fcpport
				set contents of text field "fcphost" to fcphost
				set contents of text field "logLevel" to logLevel
				set contents of text field "language" to language
				set contents of text field "password" to the_password
				set contents of text field "news_boards" to news_boards
				set contents of text field "news_days" to news_days
				set contents of text field "news_nick" to news_nick
			end tell
			-- display panel
			try
				--sets theResult to the parameter we pass in config-buttons
				set theResult to (display panel panelWIndow)
				if theResult is 1 then -- we hit the save button
					-- Set the new state of the items from the panel
					tell panelWIndow
						set nodename to contents of text field "nodename"
						set nodeport to contents of text field "nodeport"
						set proxyport to contents of text field "proxyport"
						set proxyhost to contents of text field "proxyhost"
						set bwlimit to contents of text field "bwlimit"
						set maxhtl to contents of text field "maxhtl"
						set fcpport to contents of text field "fcpport" as string
						set fcphost to contents of text field "fcphost"
						set logLevel to contents of text field "logLevel"
						set language to contents of text field "language"
						set the_password to contents of text field "password"
						set news_boards to contents of text field "news_boards"
						set news_days to contents of text field "news_days"
						set news_nick to contents of text field "news_nick"
					end tell
					-- Set new contents of each line
					set item nodename_line of configdata to "nodename=" & nodename
					set item nodeport_line of configdata to "nodeport=" & nodeport
					set item proxyport_line of configdata to "proxyport=" & proxyport
					set item proxyhost_line of configdata to "proxyhost=" & proxyhost
					set item bwlimit_line of configdata to "bwlimit=" & bwlimit
					set item maxhtl_line of configdata to "maxhtl=" & maxhtl
					set item fcpport_line of configdata to "fcpport=" & fcpport
					set item fcphost_line of configdata to "fcphost=" & fcphost
					set item logLevel_line of configdata to "logLevel=" & logLevel
					set item the_password_line of configdata to "password=" & the_password
					set item news_boards_line of configdata to "news_boards=" & news_boards
					set item news_days_line of configdata to "news_days=" & news_days
					set item news_nick_line of configdata to "news_nick=" & news_nick
					set item language_line of configdata to "language=" & language
					-- write out new file
					try
						set fref to (open for access theFile with write permission)
						repeat with i from 1 to len
							write item i of configdata to fref
							-- need to use unix \n instead of \r
							write "
" to fref
						end repeat
						close access fref
						try
							-- so cancel doesn't error out
							display dialog "New Settings Saved! You must restart Entropy for the settings to take affect."
						end try
						
					on error
						display dialog "Error: Encountered problem writing entropy.conf. Please check the file and verify that it is not corrupt. Normally the last few lines with contain errors."
						
					end try
					-- no else since else means we pressed the cancel button
				end if -- theResult is 1
			on error
				display dialog "Error displaying configuration panel (try)"
			end try -- display panel
		on error
			display dialog "Error loading nib configuration panel (try)"
		end try -- load panel
	end if -- read success	
	
end clicked

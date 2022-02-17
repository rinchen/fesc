
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
	set theLocation to call method "defaultObjectForKey:" with parameter "location"
	
	-- read config file
	try
		set read_success to true
		set theFile to alias (theLocation & "freenet.conf")
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
				considering case -- otherwise we can't distinguish bandwidth variables
					if theLine contains "ipAddress" then
						set ipAddress to assignvalue(theLine)
						set ipAddress_line to i
					else if theLine contains "listenPort" then
						set listenPort to assignvalue(theLine)
						set listenPort_line to i
					else if theLine contains "adminPassword" then
						set adminPassword to assignvalue(theLine)
						set adminPassword_line to i
					else if theLine contains "adminPeer" then
						set adminPeer to assignvalue(theLine)
						set adminPeer_line to i
					else if theLine contains "transient" then
						set transient to assignvalue(theLine)
						set transient_line to i
					else if theLine contains "bandwidthLimit=" then
						set bandwidthlimit to assignvalue(theLine)
						set bandwidthlimit_line to i
					else if theLine contains "maxNodeConnections" then
						set maxNodeConnections to assignvalue(theLine)
						set maxNodeConnections_line to i
					else if theLine contains "maximumThreads" then
						set maximumThreads to assignvalue(theLine)
						set maximumThreads_line to i
					else if theLine contains "maxHopsToLive" then
						set maxHopsToLive to assignvalue(theLine)
						set maxHopsToLive_line to i
					else if theLine contains "announcementHTL" then
						set announcementHTL to assignvalue(theLine)
						set announcementHTL_line to i
					else if theLine contains "initialRequestHTL" then
						set initialRequestHTL to assignvalue(theLine)
						set initialRequestHTL_line to i
					else if theLine contains "mainport.port" then
						set mainportport to assignvalue(theLine)
						set mainportport_line to i
					else if theLine contains "mainport.allowedHosts" then
						set mainportallowedHosts to assignvalue(theLine)
						set mainportallowedHosts_line to i
					else if theLine contains "logLevel" then
						set logLevel to assignvalue(theLine)
						set logLevel_line to i
					else if theLine contains "logInboundContacts" then
						set logInboundContacts to assignvalue(theLine)
						set logInboundContacts_line to i
					else if theLine contains "logOutboundContacts" then
						set logOutboundContacts to assignvalue(theLine)
						set logOutboundContacts_line to i
					else if theLine contains "logInboundRequests" then
						set logInboundRequests to assignvalue(theLine)
						set logInboundRequests_line to i
					else if theLine contains "logOutboundRequests" then
						set logOutboundRequests to assignvalue(theLine)
						set logOutboundRequests_line to i
					else if theLine contains "logInboundInsertRequestDist" then
						set logInboundInsertRequestDist to assignvalue(theLine)
						set logInboundInsertRequestDist_line to i
					else if theLine contains "logSuccessfulInsertRequestDist" then
						set logSuccessfulInsertRequestDist to assignvalue(theLine)
						set logSuccessfulInsertRequestDist_line to i
					end if
				end considering
			end if
		end repeat
	on error
		display dialog "Error: Encountered problem reading Freenet.conf"
		set read_success to false
	end try
	
	-- if good read then display panel
	if read_success then
		
		-- Load the panel. We do this by loading the nib that contains the panel window, and then setting our property to the loaded window. Only do this once, as every time the nib is loaded, it will create new copies of all of the top level objects in the nib.
		try
			if not (exists panelWIndow) then
				load nib "ConfigPanel"
				set panelWIndow to window "Config"
			end if
			
			
			-- Set the state of the items in the panel
			tell panelWIndow
				set contents of text field "ipAddress" to ipAddress
				set contents of text field "listenPort" to listenPort
				set contents of text field "adminPassword" to adminPassword
				set contents of text field "adminPeer" to adminPeer
				set contents of button "transient" to transient
				set contents of text field "bandwidthLimit" to bandwidthlimit
				set contents of text field "maxNodeConnections" to maxNodeConnections
				set contents of text field "maximumThreads" to maximumThreads
				set contents of text field "maxHopsToLive" to maxHopsToLive
				set contents of text field "announcementHTL" to announcementHTL
				set contents of text field "initialRequestHTL" to initialRequestHTL
				set contents of text field "mainportport" to mainportport
				set contents of text field "mainportallowedHosts" to mainportallowedHosts
				set contents of text field "logLevel" to logLevel
				set contents of button "logOutboundContacts" to logOutboundContacts
				set contents of button "logInboundContacts" to logInboundContacts
				set contents of button "logOutboundRequests" to logOutboundRequests
				set contents of button "logInboundRequests" to logInboundRequests
				set contents of button "logInboundInsertRequestDist" to logInboundInsertRequestDist
				set contents of button "logSuccessfulInsertRequestDist" to logSuccessfulInsertRequestDist
			end tell
			
			-- display panel
			try
				--sets theResult to the parameter we pass in config-buttons
				set theResult to (display panel panelWIndow)
				if theResult is 1 then -- we hit the save button
					-- Set the new state of the items from the panel
					tell panelWIndow
						set ipAddress to contents of text field "ipAddress"
						set listenPort to contents of text field "listenPort"
						set adminPassword to contents of text field "adminPassword"
						set adminPeer to contents of text field "adminPeer"
						set transient to contents of button "transient" as string
						set bandwidthlimit to contents of text field "bandwidthLimit"
						set maxNodeConnections to contents of text field "maxNodeConnections"
						set maximumThreads to contents of text field "maximumThreads"
						set maxHopsToLive to contents of text field "maxHopsToLive"
						set announcementHTL to contents of text field "announcementHTL"
						set initialRequestHTL to contents of text field "initialRequestHTL"
						set mainportport to contents of text field "mainportport"
						set mainportallowedHosts to contents of text field "mainportallowedHosts"
						set logLevel to contents of text field "logLevel"
						set logOutboundContacts to contents of button "logOutboundContacts" as string
						set logInboundContacts to contents of button "logInboundContacts" as string
						set logOutboundRequests to contents of button "logOutboundRequests" as string
						set logInboundRequests to contents of button "logInboundRequests" as string
						set logInboundInsertRequestDist to contents of button "logInboundInsertRequestDist" as string
						set logSuccessfulInsertRequestDist to contents of button "logSuccessfulInsertRequestDist" as string
					end tell
					-- Set new contents of each line
					set item ipAddress_line of configdata to "ipAddress=" & ipAddress
					set item listenPort_line of configdata to "listenPort=" & listenPort
					set item adminPassword_line of configdata to "adminPassword=" & adminPassword
					set item adminPeer_line of configdata to "adminPeer=" & adminPeer
					set item transient_line of configdata to "transient=" & transient
					set item bandwidthlimit_line of configdata to "bandwidthLimit=" & bandwidthlimit
					set item maxNodeConnections_line of configdata to "maxNodeConnections=" & maxNodeConnections
					set item maximumThreads_line of configdata to "maximumThreads=" & maximumThreads
					set item maxHopsToLive_line of configdata to "maxHopsToLive=" & maxHopsToLive
					set item announcementHTL_line of configdata to "announcementHTL=" & announcementHTL
					set item initialRequestHTL_line of configdata to "initialRequestHTL=" & initialRequestHTL
					set item mainportport_line of configdata to "mainport.port=" & mainportport
					set item mainportallowedHosts_line of configdata to "mainport.allowedHosts=" & mainportallowedHosts
					set item logLevel_line of configdata to "logLevel=" & logLevel
					set item logOutboundContacts_line of configdata to "logOutboundContacts=" & logOutboundContacts
					set item logInboundContacts_line of configdata to "logInboundContacts=" & logInboundContacts
					set item logOutboundRequests_line of configdata to "logOutboundRequests=" & logOutboundRequests
					set item logInboundRequests_line of configdata to "logInboundRequests=" & logInboundRequests
					set item logInboundInsertRequestDist_line of configdata to "logInboundInsertRequestDist=" & logInboundInsertRequestDist
					set item logSuccessfulInsertRequestDist_line of configdata to "logSuccessfulInsertRequestDist=" & logSuccessfulInsertRequestDist
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
							display dialog "New Settings Saved! You must restart Freenet for the settings to take affect."
						end try
					on error
						display dialog "Error: Encountered problem writing Freenet.conf. Please check the file and verify that it is not corrupt. Normally the last few lines with contain errors."
						
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

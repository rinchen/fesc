
(* ==== Properties ==== *)

property preferencesWindow : null


(* ==== Event Handlers ==== *)

-- This event handler is called when the "preferences" menu item is chosen.
-- 
on choose menu item theObject
	-- Only load the preferences nib once
	
	if preferencesWindow is equal to null then
		load nib "Preferences"
		set preferencesWindow to window "Preferences"
	end if
	
	-- Load in the preferences
	loadPreferences(preferencesWindow)
	
	-- Show the preferences window
	set visible of preferencesWindow to true
end choose menu item


on clicked theObject
	-- Hide the preferences window
	set visible of preferencesWindow to false
	
	--save 
	if name of theObject is "Save" then storePreferences(preferencesWindow)
	
	if name of theObject is "newfreenetlocation" then
		set newfreenetlocation to (choose folder with prompt "Please specify the location of your Freenet Folder") as string
		tell preferencesWindow
			set contents of text field "FreenetLocation" to newfreenetlocation
			set visible of preferencesWindow to true --allows the pref window to become main again
		end tell
	end if
	
	
	if name of theObject is "newentropylocation" then
		set newentropylocation to (choose folder with prompt "Please specify the location of your Entropy Folder") as string
		tell preferencesWindow
			set contents of text field "EntropyLocation" to newentropylocation
			set visible of preferencesWindow to true --allows the pref window to become main again
		end tell
	end if
	
	if name of theObject is "newsamizdatlocation" then
		set newsamizdatlocation to (choose folder with prompt "Please specify the location of your Samizdat Folder") as string
		tell preferencesWindow
			set contents of text field "SamizdatLocation" to newsamizdatlocation
			set visible of preferencesWindow to true --allows the pref window to become main again
		end tell
	end if
	
	
	
end clicked


(* ==== Handlers ==== *)

on loadPreferences(theWindow)
	try
		-- Read in the preferences
		set theLocation to call method "defaultObjectForKey:" with parameter "location"
		set entropyloc to call method "defaultObjectForKey:" with parameter "entropy"
		set samizdatloc to call method "defaultObjectForKey:" with parameter "samizdat"
		
		-- Set the contents of the UI elements
		tell theWindow
			set contents of text field "FreenetLocation" to theLocation
			set contents of text field "EntropyLocation" to entropyloc
			set contents of text field "SamizdatLocation" to samizdatloc
		end tell
	on error
		display dialog "Error loading Preferences."
	end try
end loadPreferences

-- This handler will get the values from the UI elements and store those values in the  preferences file.
--
on storePreferences(theWindow)
	-- Get the contents of the UI elements
	try
		tell theWindow
			set theLocation to contents of text field "FreenetLocation"
			set entropyloc to contents of text field "EntropyLocation"
			set samizdatloc to contents of text field "SamizdatLocation"
		end tell
		
		-- Write out the preferences
		call method "setDefaultObject:forKey:" with parameters {theLocation, "location"}
		call method "setDefaultObject:forKey:" with parameters {entropyloc, "entropy"}
		call method "setDefaultObject:forKey:" with parameters {samizdatloc, "samizdat"}
		
		display dialog "Preferences Saved."
	on error
		display dialog "Error saving preferences."
	end try
end storePreferences

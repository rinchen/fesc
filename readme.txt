Freenet/Entropy Controller
by Joey Stanford
joey@stan4d.net
Visit the Freenet/Entropy/Samizdat Controller iBlog at http://mac.stan4d.net

License: BSD (Open Source)

Copyright (c) 2003, Joey Stanford <joey@stan4d.net>

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:       

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
        
Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
      
Neither the name of the Joey Stanford nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

-----------------

Introduction:

Freenet/Entropy Controller is a small application which allows you to do the following with regard to Freenet (http://www.freenetproject.org): start, stop, check status, view and cycle logs, upgrade, restore, and configure.

It also allows you to do the following with regard to Entropy (http://entropy.stop1984.com): start, stop, check status, upgrade, view and cycle logs, and configure.

It also allows you to do the following with regard to Samizdat (http://127.0.0.1:9999/SSK@lpScwmJpAkClmykG51xTjg9bIemBCMA/Samizdat//): start, stop, check status, and view the logs.

Why did you write it?

1) MacFreenet doesn't work under OS X.
2) I was tired of having to goto the terminal to do it and I didn't want to add it as a service.
3) I wanted to control it after it launched.
4) I wanted to learn AppleScript
5) I wanted to learn AppleScript Studio
6) I wanted to do something for the community.
7) There wasn't a program to control Entropy
8) There wasn't a program to control Samizdat

Requirements:

Mac OS 10.2 and above, working Freenet installation and/or working Entropy installation and/or working Samizdat installation.

Installation:

New Install:
1) Verify Freenet is located in /Applications/freenet. If not, you will have to change the preferences immediately upon launch.

2) Verify Entropy is located in /Applications/entropy. If not, you will have to change the preferences immediately upon launch.

3) Verify Samizdat is located in /Applications/samizdat. If not, you will have to change the preferences immediately upon launch.

4) Make sure you have run Freenet at least one from the command line to configure it. (cd to the directory and run "sh start-freenet.sh")

5) Make sure you have run Entropy at least one from the command line to verify it built correctly.

6) Make sure you have run Samizdat at least one from the command line to verify it built correctly.

7) copy over the provided shell script(s) (.sh files) into the Freenet directory

8) copy Freenet/Entropy/Samizdat Controller to where ever you'd like it, preferably 
/Applications/Freenet Controller

9) Optional: Add startup-freenet.app to your login items so freenet automatically starts on boot. This script assumes Freenet is in /Applications/freenet.

10) Optional: Add startup-entropy.app to your login items so entropy automatically starts on boot. This script assumes Freenet is in /Applications/entropy.

11) From the Freenet directory, run "sh update.sh" just to make sure it works. If you need to get WGET, consider getting it via FINK (The Darwin Ports version will also work.). You may have to "cd /usr/bin" and issue "sudo ln -s /sw/bin/wget wget". (The shell command I use doesn't allow a "set path")

12) Optional: Entropy can support direct updating from the cvs. If you wish to enable this update functionality you should install entropy directly from cvs.    To do this issue:

cvs -d :pserver:anonymous@stop1984.org:/home/cvs login

to log in for the first time. The anonymous password is empty, so hit ENTER when the server asks you for the password. Then to grab the code, issue:

 cvs -z2 -d :pserver:anonymous@stop1984.org:/home/cvs co entropy

Make sure you place the entropy directory in /Applications. When you issue these commands it will place the entropy folder in whatever directory you are currently in.

13) Follow the instructions in the Entropy README to change your Makefile to specify PPC and/or Altivec (if you're on a G4 or G5). (e.g. "pico Makefile")

 
14) Enjoy the program! :-)  Make sure to visit http://www.freenetproject.org  & http://entropy.stop1984.com for the latest happenings!

Upgrades:
1) Unless specified otherwise in the change log, you only need to replace the freenet controller application.

How to use:

Freenet/Entropy/Samizdat Controller is designed to hide when you don't need it.  Ideally, you can drag the application to your dock and just click it when you want the interface. No minimizing, maximizing, resizing... and it's so small in memory and uses almost no CPU cycles that there's no reason to quit it either. (note: the spinner progress indicator is deactivated on hide so it consumes no CPU cycles.)

Will you add feature xyz?

I very well might. Ask away!

--------------
change log

v2.8 - 4 July 2003 - Added Samizdat NNTP support.

v2.7 - 5 June 2003 - Removed update.sh and reworked restore-prev.sh. Freenet's update.sh now works. To upgrade this functionality you must remove update.sh and restore-prev.sh from your freenet directory, download the latest build from Freenet and copy it over to your freenet directory (this will give you the new update.sh), and finally copy over the new restore-prev.sh. Bug Fix to the Freenet configuration script  (listenPort error).  If you are running a non-24/7 freenet node, I've found that with this latest release you might consider deleting your entire freenet folder and starting with a fresh install. 

v2.6 - 4 June 2003 - Mandatory Upgrade Warning. Bug fix to Freenet and Entropy configuration code which could corrupt config files. Bug fix to Freenet and Entropy startup commands. Added Entropy v0.3.2-229 enhancements: CVS upgrade ability, NEWS support, Password Support, Support Forum linkage.  New Folder Icon. Revised Install Documentation. New startup-entropy script. Various other nit changes.

v2.5 - 16 May 2003 - Entropy v0.3.1-224 compatibility release. Updated main panel text, optimized some code, and added new folder icon. 

v2.4 - Freenet v0.5.1 Compatability Release. Upon installing Freenet v0.5.1, please erase your freenet.conf file and create a new one using start-freenet.sh. Changes in this release are in the configuration panel for Freenet. Removed several options which weren't being used. Removed depreciated transient node option. Added new mainport options.  Also note the license has changed from GPL to BSD.  This product is still open source and FREE!

v2.3 - Minor interface tweaks and added sound.

v2.1/2.2 - Bug fix (bad build). Also tweaked the interface

v2.0 - Name Change! New Icon! Added Entropy Support! Added Preferences dialog (and updated ALL the code) at the request of Benoit Nadeau so users can set the location of their Freenet and Entropy directories. Tweaked several lines of code and the main interface window.

v1.0 - Advanced Features are here! Added Advanced Tab. Added ability to renice process to improve transient node performance as well as those running distributed computing project (dnet, seti@home, etc.) software. Add ability to configure the major end-user elements of the Freenet.conf file including ports and logging.

v0.5 - Removed resize ability since it won't work with a tab view anyway, updated readme with more info, added code to prevent starting a second copy of freenet, more panel tweaks, removed "check freenet status" and added progress spinner and associated code, spinner is deactivated on hide to stop cpu consumption and reactivated upon becoming main...this is also done to catch you sneaky people who cancel the freenet server from the terminal, upgraded interface compatability from pre-10.2 to 10.2 (allowed use of spinner which takes 4 times less resources than the bar indicator) and modified the about box and added link to my Freenet Controller iBlog

v0.4 - Found a way around having to open the terminal to start freenet! Updated both the start function and the startup-freenet app, updated readme & install instructions, added hops as the application icon, modified upgrade/restore tab, added button to go to Freenet support forum, added The Freenet Project to the credits, found and updated the hidden panel in Project Builder to specify version information to Version Tracker and Update Radar.

v0.3 - Added credits section to readme and added Marion Bates to it, modifed window, panel, and wording, disabled close until I can figure out how to deal with it properly (ergo you have to use quit now), will now stop freenet prior to updating, added goto gateway button, updated version codes,
and a side note: email from Freenet's Matthew Toseland indicates that official backup and restore scripts will be added in the future. Yea! :-)

v0.2 - updated documentation, recoded all of the existing error checking and added a bunch more, added log functions, metalized, tweaked some window settings, changed startup-freenet from a compiled script to an app.

v0.1 - first public release

--------------
Credits:
- Marion Bates (Marion.Bates@Dartmouth.EDU) for the idea of backup and restore scripts for upgrading Freenet.
- The Freenet Project and staff for the Freenet program and for keeping Freedom alive especially in places like China.
- Zeitgeist (dmgeist@yahoo.com) for the Hop2 icon
- The Entropy Project and staff for the Entropy program.
- Juergen Buchmueller of Entropy for CVS space

# auto-pabb
Automating Pegasus Astro Box functions via API in the NINA advance sequencer.

This is the start of my NINA -> Pegasus Astro API integration script library.

To get started add the "Externa Script" instruction to your sequence for each action you want to take.
The first action must always be pointed to the "pba-start-server.bat" file, make sure you select this with the full location extension.

You will need to change the location that it saves & reads the json file from within each script (server & voltage .bat's) to match where you want to save it. To do this, open the scipt in notepad and change the location below:

EG: "C:\Users\Astro\Desktop\response.json" to "C:\Users\YOURUSERNAME\Desktop\response.json"

To change the voltage, simply then add the required voltage script to the sequence as anotherr "External Script" line. This voltage can be 3, 5, 7, 9, or 12.

To adjust change "XXXXXXXX" to the number of volts you want:
http://localhost:32000/Driver/PPBAdvance/Power/Variable/XXXXXXXX?DriverUniqueKey=%uniqueKey%"

Eg. for 9v:
http://localhost:32000/Driver/PPBAdvance/Power/Variable/9?DriverUniqueKey=%uniqueKey%"

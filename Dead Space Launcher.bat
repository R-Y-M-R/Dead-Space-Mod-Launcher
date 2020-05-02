@echo off
color 06
title Dead Space Origin Mod Swapper
echo Dead Space Origin Mod Swapper
if not exist "Dead Space origin.exe" (
	echo Dead Space origin.exe doesn't exist, exiting!
	pause
	exit
) 
if not exist "Dead Space texmod.exe" (
	echo Dead Space texmod.exe doesn't exist, exiting!
	pause
	exit
) 

cls
color 03
echo Environment is prepared.
echo --------------------------
copy "Dead Space texmod.exe" "Dead Space.exe"
start "" "Dead Space.exe"
echo Started texmod. Sleeping for 3s.
ping 127.0.0.1 -n 3 > nul
move /y "Dead Space.exe" "Dead Space texmod.exe"
echo Renamed "Dead Space.exe" to "Dead Space texmod.exe"
copy "Dead Space origin.exe" "Dead Space.exe"
echo Restored origin "Dead Space.exe"

cls
color 0a
echo Select mods in the texmod window, then use it to launch "Dead Space.exe". 
echo --------------------------
echo Problem? Close all other instances of texmod.
echo All done. This window will automatically close in 30s.
ping 127.0.0.1 -n 15 > nul
exit

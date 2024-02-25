@ECHO off
ECHO Pinging file server. 

ping 192.168.252.100

pause

ECHO Stopping workstation service

net stop workstation /y

pause

ECHO Starting workstation service

net start workstation

pause

ECHO Establishing file server storage connection.

explorer.exe \\192.168.252.100

pause

ECHO Server storage connection achieved.

ECHO on
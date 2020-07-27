@echo off
echo moving start_server.bat to %windir%\system32 ...
if exist start_server.bat (
    move start_server.bat %windir%\system32
)
if not exist start_server.bat (
   echo File not Found. Already moved?
   cmd /k
)
:ProcessError
    echo File not moved, maybe it's not accessible?
    cmd /k

if %ErrorLevel% neq 0 goto ProcessError
echo complete!
del Installer.bat
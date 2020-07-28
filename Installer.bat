rem Deactivate echo so the script isn't printing to cmd.
@echo off

echo moving start_server.bat to %windir%\system32 ...

rem check if start_server.bat exists and move it to System32 Folder
if exist start_server.bat (
    move start_server.bat %windir%\system32
)

rem another Check to look after the File and output an Info
if not exist start_server.bat (
   echo File not Found. Already moved?
   cmd /k
)

rem function to output that the File isn't moved for some unknown reason
:ProcessError
    echo File not moved, maybe it's not accessible?
    cmd /k
    
rem check for Error and if there is one go to function
if %ErrorLevel% neq 0 goto ProcessError
echo complete!

rem To safe some Space (1mb or something like this xD)
del Installer.bat

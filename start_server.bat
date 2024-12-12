@echo off
rem echo off so the script isn't shown

echo Thank you for using the "create-react-app"-version of start_server.

rem set Variable to parameter 1
set Directory=%1

rem check if there is a parameter 1
IF [%Directory%] EQU [] (
    echo you need to start this command like: start_server C:/Hello_World
    echo Only Enter Absolute Paths, as relative Paths may result in unexpected Behaviour.
    exit /B
)

rem go to Directory
cd /D %Directory%

rem check if node_modules is found in given Directory and if not end Script
if NOT EXIST %Directory%\node_modules (
    echo node_modules not found
    exit /B
)
rem check if scripts are found if not end Script
 if NOT EXIST %Directory%\node_modules\react-scripts\scripts (
     echo start Script not found
     exit /B
 )
 
 rem run create-react-app Server
 npm run start 

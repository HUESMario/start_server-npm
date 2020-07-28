rem echo off so the script isn't shown
@echo off

echo Thank you for using the "create-react-app"-version of start_server.

rem Variable set Variable to parameter 1
set Directory=%1

rem check if there is an parameter 1
IF [%Directory%] EQU [] (
    echo "you can start your server from everywhere, but you need 1 Parameter: the Folder in which your create-react-app Project is Placed."
    echo "for example: start_server C:/Hello_World"
    exit /B
)

rem go to Directory
cd /D %Directory%

rem check if node_modules is found in given Directory and if yes end Script
if NOT EXIST %Directory%\node_modules (
    echo node_modules not found
    exit /B
)
rem check if scripts are found if yes end Script
 if NOT EXIST %Directory%\node_modules\react-scripts\scripts (
     echo start Script not found
     exit /B
 )
 
 rem run create-react-app Server
 npm run start 

@echo Thank you for using the "create-react-app"-version of start_server.
set Directory=%1

IF [%Directory%] EQU [] (
    echo "you can start your server from everywhere, but you need 1 Parameter: the Folder in which your create-react-app Project is Placed."
    echo "for example: start_server C:/Hello_World"
    exit /B
)

cd /D %Directory%

if NOT EXIST %Directory%\node_modules (
    echo node_modules not found
    exit /B
)
 if NOT EXIST %Directory%\node_modules\react-scripts\scripts (
     echo start Script not found
     exit /B
 )
 npm run 
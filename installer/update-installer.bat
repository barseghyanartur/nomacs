REM dir to current directory
cd %~dp0

REM update repo
C:\Qt\QtIFW2.0.1\bin\repogen.exe -p ./packages --update repository

REM create offline installer
REM C:\Qt\QtIFW2.0.1\bin\binarycreator.exe -c config\config.xml -p packages -r config/resources.qrc nomacs-setup

REM use for final online installer
C:\Qt\QtIFW2.0.1\bin\binarycreator.exe -n -c config\config.xml -p packages -r config/resources.qrc nomacs-setup

pause
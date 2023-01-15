@echo off
bitsadmin /create download
bitsadmin /complete download
bitsadmin /resume download
mkdir log
cd log
rem
(
echo done of create download job!
)>log.txt
cd ..
bitsadmin /list
pause

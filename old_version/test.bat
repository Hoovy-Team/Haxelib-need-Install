@echo off
:main
echo Enter a haxelib name, besure this name contains a lib and, like "flixel"
set /p name=
pause
echo Enter a haxelib name, besure this name contains a lib and, like "5.1.0"
set /p version=
pause
echo download %name%. version %version%
https://lib.haxe.org/p/flixel/5.1.0/download/
mkdir download
mkdir log
cd C:\Users\Admin\Downloads\
bitsadmin.exe /transfer download https://lib.haxe.org/p/%name%/%version%/download C:\Users\Admin\Downloads\%name%-%version%.zip
cd C:\Users\Admin\Downloads
haxelib install "%name%-%version%.zip"
cd ..
pause
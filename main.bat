@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=
REM BFCPEICON=
REM BFCPEICONINDEX=-1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=0
REM BFCPEVERVERSION=1.0.0.0
REM BFCPEVERPRODUCT=Product Name
REM BFCPEVERDESC=Product Description
REM BFCPEVERCOMPANY=Your Company
REM BFCPEVERCOPYRIGHT=Copyright Info
REM BFCPEWINDOWCENTER=1
REM BFCPEDISABLEQE=0
REM BFCPEWINDOWHEIGHT=25
REM BFCPEWINDOWWIDTH=80
REM BFCPEWTITLE=Window Title
REM BFCPEOPTIONEND
@echo off
:main
mode con:cols=65 lines=7
cls
color 0a
title Haxelib Need Install
echo Wellcome to Haxelib Need Install App
echo  A alt ways to install haxelib
echo 1. Install main haxelib
echo 2. Install other haxelib (NEED CONNECT TO THE INTERNET AND BETA!)
echo 3. Install like other (NOT RECOMMEND FOR SOME PC HAVE GOT ERROR)
echo 4. Setup Lime command, flixel command (WORK WHEN YOU ARE INSTALL MAIN HAXELIB)
echo 5. Exit
set /p mainC="Press a number then press enter:"
if %mainC%==1 goto discord
if %mainC%==2 goto install_internet
if %mainC%==3 goto install_normall
if %mainC%==4 goto setup
if %mainC%==5 goto exit
pause >nul

:setup
cls
echo Run Lime setup
haxelib run lime setup
echo done
cls
echo Run Flixel Setup
haxelib run flixel-tools setup
echo done
pause
goto main

:install_normall
cls
echo enter a name haxelib
set /p name=
haxelib install %name%
pause
goto main

:install_internet
cls
echo Enter a haxelib name, 
echo besure this name contains a lib name, like "flixel"
set /p name=
cls
echo Enter a haxelib version, 
echo besure this name contains a lib version, like "5.1.0"
set /p version=
cls
echo Download in prorgress...
echo download %name%. version %version%
cd C:\Users\Admin\Downloads\
bitsadmin.exe /transfer "download" /DOWNLOAD /priority HIGH /DYNAMIC https://lib.haxe.org/p/%name%/%version%/download C:\Users\Admin\Downloads\%name%-%version%.zip
cd C:\Users\Admin\Downloads
haxelib install "%name%-%version%.zip"
pause >nul
goto main

:discord
cls
color 0a
echo Do you want to install Discord??
echo May can not working when install!
echo.
echo 1. Install with Discord
echo 2. Install without Discord
set /p discordC="Press a number then press enter:"
if %discordC%==1 goto install_discord
if %discordC%==2 goto install
pause >nul

:install_discord
cd haxelib
cls
echo Install Discord
haxelib install "discord_rpc.zip"
cls
echo Install Flixel
haxelib install "flixel-5,1,0.zip"
cls
echo Install Flixel Addons
haxelib install "flixel-addons-3,0,0.zip"
cls
echo Install Flixel Ui
haxelib install "flixel-ui-2,5,0.zip"
cls
echo Install Flixel Tools
haxelib install "flixel-tools-1,5,1.zip"
cls
echo Install Flixel Template
haxelib install "flixel-templates-2,6,6.zip"
cls
echo Install Lime
haxelib install "lime-8,0,0.zip"
cls
echo Install Openfl
haxelib install "openfl-9,2,0.zip"
cls
echo Install Openfl Samples
haxelib install "openfl-samples-8,7,0.zip"
cls
echo Install Openfl Webm
haxelib install "openfl-webm-0,0,4.zip"
cls
echo Install Lime
haxelib install "lime-8,0,0.zip"
cls
echo Install Lime Samples
haxelib install "lime-samples-7,0,0.zip"
cls
echo Install Hxcpp
haxelib install "hxcpp-4,2,1.zip"
cls
echo Install Hscrpit
haxelib install "hscript-2,5,0.zip"
echo done
cls
echo Install Actuate
haxelib install "actuate-1,9,0.zip"
echo done
cls
echo Install Box2D
haxelib install "box2d-1,2,3.zip"
echo done
cls
echo Install Layout
haxelib install "layout-1,2,1.zip"
echo done
cls
echo Install Systools
haxelib install "systools-1,1,0.zip"
echo done
pause
goto main

:install
cd haxelib
cls
echo Install Flixel
haxelib install "flixel-5,1,0.zip"
cls
echo Install Flixel Addons
haxelib install "flixel-addons-3,0,0.zip"
cls
echo Install Flixel Ui
haxelib install "flixel-ui-2,5,0.zip"
cls
echo Install Flixel Tools
haxelib install "flixel-tools-1,5,1.zip"
cls
echo Install Flixel Template
haxelib install "flixel-templates-2,6,6.zip"
cls
echo Install Lime
haxelib install "lime-8,0,0.zip"
cls
echo Install Openfl
haxelib install "openfl-9,2,0.zip"
cls
echo Install Openfl Samples
haxelib install "openfl-samples-8,7,0.zip"
cls
echo Install Openfl Webm
haxelib install "openfl-webm-0,0,4.zip"
cls
echo Install Lime
haxelib install "lime-8,0,0.zip"
cls
echo Install Lime Samples
haxelib install "lime-samples-7,0,0.zip"
cls
echo Install Hxcpp
haxelib install "hxcpp-4,2,1.zip"
cls
echo Install Hscrpit
haxelib install "hscript-2,5,0.zip"
echo done
cls
echo Install Actuate
haxelib install "actuate-1,9,0.zip"
echo done
cls
echo Install Box2D
haxelib install "box2d-1,2,3.zip"
echo done
cls
echo Install Layout
haxelib install "layout-1,2,1.zip"
echo done
cls
echo Install Systools
haxelib install "systools-1,1,0.zip"
echo done
pause
goto main

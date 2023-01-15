@echo off
:discord_yes
cd ..
title FNF INSTALL TOOL - DISCORD
echo Do you want to install discord?
set /p t_f2=
if %t_f2%==Yes goto install_yes
if %t_f2%==yes goto install_yes
if %t_f2%==No goto install_no
if %t_f2%==no goto install_no
pause >nul

:install_no
cd haxelib
haxelib install "flixel-5,1,0.zip"
haxelib install "flixel-addons-3,0,0.zip"
haxelib install "flixel-ui-2,5,0.zip"
haxelib install "flixel-tools-1,5,1.zip"
haxelib install "flixel-templates-2,6,6.zip"
haxelib install "lime-samples-7,0,0.zip"
haxelib install "openfl-9,2,0.zip"
haxelib install "openfl-samples-8,7,0.zip"
haxelib install "openfl-webm-0,0,4.zip"
haxelib install "lime-8,0,0.zip"
haxelib install "lime-samples-7,0,0.zip"
haxelib install "hxcpp-4,2,1.zip"
haxelib install "hscript-2,5,0.zip"
goto flixel
pause

:install_yes
cd haxelib
haxelib install "flixel-5,1,0.zip"
haxelib install "flixel-addons-3,0,0.zip"
haxelib install "flixel-ui-2,5,0.zip"
haxelib install "flixel-tools-1,5,1.zip"
haxelib install "flixel-templates-2,6,6.zip"
haxelib install "openfl-9,2,0.zip"
haxelib install "openfl-samples-8,7,0.zip"
haxelib install "openfl-webm-0,0,4.zip"
haxelib install "lime-8,0,0.zip"
haxelib install "lime-samples-7,0,0.zip"
haxelib run flixel-tools setup
haxelib install "discord-rpc.zip"
haxelib install "hxcpp-4,2,1.zip"
haxelib install "hscript-2,5,0.zip"
goto flixel
pause

:flixel
cls
haxelib run flixel-tools setup

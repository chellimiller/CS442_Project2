@echo off
title ls
rem This is an ls command for Windows

rem Set created variables to be local only
setlocal

rem Add a blank line and go to getArgs
echo.
set option=/O:G
goto getArgs

rem Add recursive option
:r
echo Options: -R
set option=%option% /S
echo.
goto dir

rem Check arguments and set input directory
:getArgs
if [%1]==[] (
    set input=%cd%
) else if [%1]==[-R] (
    if [%2]==[] (
	    set input=%cd%
	) else (
        set input=%2
	)
	goto r
) else (
    set input=%1
)

rem Use dir command
:dir
echo.
dir %input% %option%
rem End all local variables created in the script
endlocal
rem Echo a blank line, then pause and wait for user
echo.

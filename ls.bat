@echo off
title ls
rem This is an ls command for Windows

rem Set created variables to be local only
setlocal

rem Add a blank line and go to getArgs
echo.
goto getArgs

:recursive
echo Options: -R
goto next

:nonrecursive
goto next

rem Summarize directory information
:summarize
echo Directory Summary -
echo       Total files:        %numF%
echo       Total directories:  %numD%
echo       Total links:        %numL%
echo       Total other:        %numO%
echo       Total entries:      %numE%
goto end

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
	goto recursive
) else (
    set input=%1
	goto nonrecursive
)

:next
echo Directory: %input%


:end

rem End all local variables created in the script
endlocal

rem Echo a blank line, then pause and wait for user
echo.
pause

@echo off

:MENUE
cls
echo 1 = DOS  2 = IPCONFIG 3 = COLOR 4 = EXIT

SET /P INPUT=Please select a number:
IF /I '%INPUT%'=='1' GOTO DOS
IF /I '%INPUT%'=='2' GOTO IPCON
IF /I '%INPUT%'=='3' GOTO color
IF /I '%INPUT%'=='4' GOTO EXIT


:DOS
cls
SET /P IP=Please enter a ip:
ping -t %ip%
pause
cls
:IPCON
ipconfig
pause
goto MENUE
:COLOR
cls
echo Sets the default console foreground and background colors.
echo 
echo COLOR [attr]
echo 
echo   attr        Specifies color attribute of console output
echo 
echo Color attributes are specified by TWO hex digits -- the first
echo corresponds to the background; the second the foreground.  Each digit
echo can be any of the following values:
echo 
echo     0 = Black       8 = Gray
echo     1 = Blue        9 = Light Blue
echo     2 = Green       A = Light Green
echo     3 = Aqua        B = Light Aqua
echo     4 = Red         C = Light Red
echo     5 = Purple      D = Light Purple
echo     6 = Yellow      E = Light Yellow
echo     7 = White       F = Bright White
echo 
echo  If no argument is given, this command restores the color to what it was
echo when CMD.EXE started.  This value either comes from the current console
echo window, the /T command line switch or from the DefaultColor registry
echo value.
echo 
echo The COLOR command sets ERRORLEVEL to 1 if an attempt is made to execute
echo the COLOR command with a foreground and background color that are the
echo same.
SET /P co=Please enter a color code:
color %CO%
pause
cls
goto MENUE

:EXIT
exit

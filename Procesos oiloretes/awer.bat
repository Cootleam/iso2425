@echo off

echo > %1.txt
echo %USERNAME% >> %1.txt
echo %DATE% >> %1.txt
set /p SURNAME="Ponme el pelli "
echo %SURNAME% >> %1.txt
type %1.txt
pause
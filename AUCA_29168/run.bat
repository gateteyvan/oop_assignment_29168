@echo off
REM AUCA_28422 - compile and run (Windows). Needs JDK 21+.
cd /d "%~dp0"
if exist out rmdir /s /q out
mkdir out
dir /s /b src\*.java > sources.txt
javac --release 21 -encoding UTF-8 -d out @sources.txt
if errorlevel 1 (del sources.txt & pause & exit /b 1)
del sources.txt
java -cp out com.auca.main.Main
pause

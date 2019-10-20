@echo off
setlocal enableDelayedExpansion
Set lokasi=C:\Users\thoms\OneDrive\Documents\praxis-academy\kasus\
Set cari=*.java
for /f "delims=" %%F in ('Where /R %lokasi% /F %cari%') do (
    set path=%%F 
	for /r %%F in (*.java) do echo terdapat file java di direktori %%F
	echo nama-file.java ada, diganti namanya y/t)
	set /p input=""
	if %input%==t echo Oke Byee
	if %input%==y echo Mau diganti dengan nama apa
	set /p input2=""
	ren !path! %input2%
)
pause
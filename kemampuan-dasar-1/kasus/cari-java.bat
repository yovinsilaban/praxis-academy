@echo off
setlocal enableDelayedExpansion
Set lokasi=C:\praxis-academy\kemampuan-dasar-1\kasus
Set cari=*.java
for /f "delims=" %%F in ('Where /R %lokasi% /F %cari%') do (
    set path=%%F 
	for /r %%F in (*.java) do echo terdapat file java di direktori %%F
)
pause
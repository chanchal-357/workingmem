@echo off
title WMTP
echo %cd%
echo Changing directory
cd D://chanchal
echo %cd%

SET var=Chan

::REM To add comment

if not exist "%var%" (
	echo Creating directory %var%
	mkdir %var%
) else (
	echo Nothing to do, directory %var% already exist!
)

:: start "" https://news.google.com/

ipconfig

:: systeminfo

pause

@echo off
title Discovering Network ... Please Wait !!!
echo Discovering Network ... Please Wait!!!
for /f "tokens=2 delims=:" %%a in ('ipconfig ^|findstr "IPv4"') do for /f "tokens=1,2,3 delims=." %%a in ('echo %%a') do for /L %%x in (1,1,254) do start /B ping -n 1 -w 30 %%a.%%b.%%c.%%x. >nul
title Search finish!
echo Raspberry Pi detected -----------------------------------
for /f "tokens=1" %%a in ('arp -a ^| findstr "b8-27"') do echo %%a
echo --------------------------------------------------------------
pause
for /f "tokens=1" %%a in ('arp -a ^| findstr "b8-27"') do start putty %%a
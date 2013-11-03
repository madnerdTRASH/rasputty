@echo off
title "Discovering Network ... Please Wait !!!"
for /f "tokens=16" %%a in ('ipconfig ^|findstr "IPv4"') do for /f "tokens=1,2,3 delims=." %%a in ('echo %%a') do FOR /L %%x in (1,1,255) do start /B ping -n 1 -w 30 %%a.%%b.%%c.%%x.
for /f "tokens=14" %%a in ('ipconfig ^|findstr "IPv4"') do for /f "tokens=1,2,3 delims=." %%a in ('echo %%a') do FOR /L %%x in (1,1,255) do start /B ping -n 1 -w 30 %%a.%%b.%%c.%%x.



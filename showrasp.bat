@echo off
echo Searching for Raspberry Pi -----------------------------------
for /f "tokens=1" %%a in ('arp -a ^| findstr "b8-27"') do echo %%a
echo --------------------------------------------------------------
pause
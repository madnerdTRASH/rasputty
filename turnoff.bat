@echo off
for /f "tokens=1" %%a in ('arp -a ^| findstr "b8-27"') do ( echo Turning off : %%a
echo Testing default password...
plink pi@%%a -pw raspberry sudo poweroff
)
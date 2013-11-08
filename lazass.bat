@echo off
for /f "tokens=1" %%a in ('arp -a ^| findstr "b8-27"') do ( echo Installing Lazass : %%a
echo Testing default password...
plink pi@%%a -pw raspberry sudo apt-get install git-core;sudo git clone http://github.com/maditnerd/lazass /home/pi/lazass;cd /home/pi/lazass;sudo ./la_global
)
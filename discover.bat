@echo off
echo Discovering network
FOR /L %%x in (1,1,255) do start ping -n 1 -w 30 192.168.0.%%x

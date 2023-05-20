@echo off
setlocal enabledelayedexpansion

set folder=%~dp0
set latestFile=
set latestTimestamp=0
set impactFile="%~dp0write_mcs.impact"

for /f "delims=" %%a in ('dir /b /a-d /o-d "%folder%\*.mcs" 2^>nul') do (
    set fileTimestamp=%%~ta
    set fileTimestamp=!fileTimestamp:~0,14!!fileTimestamp:~17,2!
    
    if "!fileTimestamp!" gtr "!latestTimestamp!" (
        set latestTimestamp=!fileTimestamp!
        set latestFile=%%a
    )
)
if not defined latestFile (
    echo No .mcs files found in the directory.
    pause
    exit /b
)


echo setMode -bs> %impactFile%
echo setMode -bs>> %impactFile%
echo setMode -bs>> %impactFile%
echo setMode -bs>> %impactFile%
echo setCable -port auto>> %impactFile%
echo Identify -inferir>> %impactFile%
echo identifyMPM>> %impactFile%
echo attachflash -position 1 -spi "W25Q64BV">> %impactFile%
echo assignfiletoattachedflash -position 1 -file "./%latestFile%">> %impactFile%
echo Program -p 1 -dataWidth 1 -spionly -e -v -loadfpga>> %impactFile%
echo exit>> %impactFile%




@echo Flashing using %latestFile%
@echo Firmware update about to begin
@echo Leave device powered on and plugged in until process is complete!!!
pause

if exist C:\Xilinx\14.7\ISE_DS (
	start "impact" C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\impact.exe -batch write_mcs.impact
)

if exist C:\Xilinx\14.7\LabTools (
	start "impact" C:\Xilinx\14.7\LabTools\LabTools\bin\nt64\impact.exe -batch write_mcs.impact
)
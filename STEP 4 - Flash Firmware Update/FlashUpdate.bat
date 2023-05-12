@echo off

@echo Firmware update about to begin
@echo Leave device powered on and plugged in until process is complete!!!
pause

if exist C:\Xilinx\14.7\ISE_DS (
	start "impact" C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\impact.exe -batch write_mcs.impact
)

if exist C:\Xilinx\14.7\LabTools (
	start "impact" C:\Xilinx\14.7\LabTools\LabTools\bin\nt64\impact.exe -batch write_mcs.impact
)
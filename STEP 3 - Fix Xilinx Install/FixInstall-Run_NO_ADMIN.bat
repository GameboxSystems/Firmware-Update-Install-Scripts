:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Copyright (c) 2008 Xilinx, Inc. All rights reserved.
:: Xilinx, Inc.
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Last Update: February 27, 2008
::
:: Driver install script for Xilinx USB Cables.
::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
:: Fix ISE install
echo Fixing broken runtime files
set var=%~dp0
if exist C:\Xilinx\14.7\ISE_DS (
	ren "C:\Xilinx\14.7\ISE_DS\ISE\lib\nt64\libPortability.dll" libPortability.dll_bak
	ren "C:\Xilinx\14.7\ISE_DS\ISE\lib\nt\libPortability.dll" libPortability.dll_bak
	ren "C:\Xilinx\14.7\ISE_DS\common\lib\nt64\libPortability.dll" libPortability.dll_bak
	ren "C:\Xilinx\14.7\ISE_DS\common\lib\nt\libPortability.dll" libPortability.dll_bak

	copy /v /-y "%var%\nt64\libPortability.dll" "C:\Xilinx\14.7\ISE_DS\ISE\lib\nt64"
	copy /v /-y "%var%\nt\libPortability.dll" "C:\Xilinx\14.7\ISE_DS\ISE\lib\nt"
	copy /v /-y "%var%\nt64\libPortability.dll" "C:\Xilinx\14.7\ISE_DS\common\lib\nt64"
	copy /v /-y "%var%\nt\libPortability.dll" "C:\Xilinx\14.7\ISE_DS\common\lib\nt"   	
)

if exist C:\Xilinx\14.7\LabTools (
	ren "C:\Xilinx\14.7\LabTools\LabTools\lib\nt64\libPortability.dll" libPortability.dll_bak
	ren "C:\Xilinx\14.7\LabTools\LabTools\lib\nt\libPortability.dll" libPortability.dll_bak
	ren "C:\Xilinx\14.7\LabTools\common\lib\nt64\libPortability.dll" libPortability.dll_bak
	ren "C:\Xilinx\14.7\LabTools\common\lib\nt\libPortability.dll" libPortability.dll_bak

	copy /v /-y "%var%\nt64\libPortability.dll" "C:\Xilinx\14.7\LabTools\LabTools\lib\nt64"
	copy /v /-y "%var%\nt\libPortability.dll" "C:\Xilinx\14.7\LabTools\LabTools\lib\nt"
	copy /v /-y "%var%\nt64\libPortability.dll" "C:\Xilinx\14.7\LabTools\common\lib\nt64"
	copy /v /-y "%var%\nt\libPortability.dll" "C:\Xilinx\14.7\LabTools\common\lib\nt"   	
)

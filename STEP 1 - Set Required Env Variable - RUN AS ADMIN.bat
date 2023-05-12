@echo off

@echo The following batch file adds 2 required environment variables to Windows that allow Xilinx ISE tools to run
@echo This batch file needs to be run as Admin or it will fail
@echo if you see any errors or '0' values printed, rerun this batch file as Admin
pause

setx XILINX_VC_CHECK_NOOP 1 /m
setx XILINX_VC_CHECK_NOOP 1
setx XIL_IMPACT_SKIPIDCODECHECK 1 /m
setx XIL_IMPACT_SKIPIDCODECHECK 1

@echo %XILINX_VC_CHECK_NOOP%
@echo %XIL_IMPACT_SKIPIDCODECHECK%

@echo Greetz from Postman!
@echo Gamebox Systems, 2023
pause
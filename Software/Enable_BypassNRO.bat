@echo on

REM Simple script to re-enable the BypassNRO option for the Windows 11 Out-Of-Box-Experience. This allows one to create a local user at install time for Windows 11. *Since MS has intentionally disabled this with recent Insider builds this may cease function in the future


reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v BypassNRO /t REG_DWORD /d 1 /f

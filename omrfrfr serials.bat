@echo off
cls

:: Set text color to green
echo | set /p="[32m"

:: Custom Logo - ASCII Art for "OMRFRFR" in Green
echo ============================================
echo      OMRFRFR SYSTEM INFO
echo ============================================
echo.
echo    OOO   M   M  RRRR   FFFFF  RRRR   FFFFF  RRRR   
echo   O   O  MM MM  R   R  F      R   R  F      R   R  
echo   O   O  M M M  RRRR   FFFF   RRRR   FFFF   RRRR   
echo   O   O  M   M  R  R   F      R  R   F      R  R   
echo    OOO   M   M  R   R  F      R   R  F      R   R  
echo.
echo ============================================
echo.

:: Get SMBIOS UUID
echo [SMBIOS UUID]          : 
echo | set /p="[38;5;213m" 
wmic csproduct get UUID | findstr /r /v "^$"
echo | set /p="[32m"
echo.

:: Get BIOS Serial Number
echo [BIOS Serial Number]   : 
echo | set /p="[38;5;213m" 
wmic bios get serialnumber | findstr /r /v "^$"
echo | set /p="[32m"
echo.

:: Get CPU Serial Number
echo [CPU Serial Number]    : 
echo | set /p="[38;5;213m" 
wmic cpu get processorid | findstr /r /v "^$"
echo | set /p="[32m"
echo.

:: Get Hard Drive Serial Number
echo [Hard Drive Serial]    : 
echo | set /p="[38;5;213m" 
wmic diskdrive get serialnumber | findstr /r /v "^$"
echo | set /p="[32m"
echo.

:: Get Memory Serial Number
echo [Memory Serial Number] : 
echo | set /p="[38;5;213m" 
wmic memorychip get serialnumber | findstr /r /v "^$"
echo | set /p="[32m"
echo.

:: Get MAC Address
echo [MAC Address]          : 
echo | set /p="[38;5;213m" 
getmac /fo list /v | findstr /r /v "^$" | findstr "Physical"
echo | set /p="[32m"
echo.

:: End
echo ============================================
echo Serial Information Collection Complete
echo ============================================

:: Reset to default color
echo | set /p="[0m"
pause

@echo off  
iflash2.exe /i | find "Currently installed BIOSID: TYBYT10H.86A.0068.2019.1113.1732"
if errorlevel 0 if not errorlevel 1 goto end

iflash2.exe /i | find "Currently installed BIOSID: TYBYT10H.86A.0052.2016.0822.1911"
if errorlevel 0 if not errorlevel 1 goto update60

iflash2.exe /i | find "Currently installed BIOSID: TYBYT10H.86A.0049.2016.0413.1649"
if errorlevel 0 if not errorlevel 1 goto update60

iflash2.exe /i | find "Currently installed BIOSID: TYBYT10H.86A.0046.2015.1014.1057"
if errorlevel 0 if not errorlevel 1 goto update49

iflash2.exe /i | find "Currently installed BIOSID: TYBYT10H.86A.0044.2015.0701.1138"
if errorlevel 0 if not errorlevel 1 goto update49

Echo No suitable firmware was found exiting.
goto end

:update60
iflash2.exe /f /p TY0068.bio
:update49
iflash2.exe /f /p TY0049.bio

:end
echo This NUC is updated
pause

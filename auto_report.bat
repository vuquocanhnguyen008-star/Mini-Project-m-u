@echo off
REM ===== auto_report.bat - Robot loc log GreenTech =====
REM Chay tu thu muc scripts/. Dung Relative Path nen chay duoc tren may khac.
cd /d "%~dp0.."

set LOG=data\log-he-thong.log
set REPORT=backup\bao-cao-su-co.txt

if not exist "%LOG%" (
    echo [LOI] Khong tim thay %LOG%
    pause
    exit /b 1
)

echo ===================================== >> "%REPORT%"
echo BAO CAO SU CO HE THONG - GREENTECH >> "%REPORT%"
echo Thoi gian chay: %date% %time% >> "%REPORT%"
echo ===================================== >> "%REPORT%"

REM Pipe: type doc tung dong, findstr loc ngay, khong nap ca file vao RAM
type "%LOG%" | findstr /I "CRITICAL ERROR TIMEOUT" >> "%REPORT%"

echo. >> "%REPORT%"
echo Hoan tat loc log. Ket qua nam trong %REPORT%

REM ===== AUDIT: hoi xac nhan truoc khi xoa (khong dung /Q /S) =====
set /p XOA=Xoa file log goc sau khi loc? (Y/N, mac dinh N): 
if /I "%XOA%"=="Y" (
    del /P "%LOG%"
) else (
    echo Giu nguyen file log goc.
)
pause

@echo off
cd /d "%~dp0"
echo.
echo =============================================
echo   PT Adiprima Suraprinta - Auto Git Push
echo =============================================
echo.

REM Cek apakah ada perubahan
git status

echo.
set /p MSG="Masukkan pesan commit (tekan Enter untuk skip): "

if "%MSG%"=="" (
    set MSG=Update website PT Adiprima Suraprinta
)

git add .
git commit -m "%MSG%"
git push origin main

echo.
echo =============================================
echo   SELESAI! Website sudah terupdate di GitHub
echo   https://github.com/122240163-afk/APSI2026_1
echo =============================================
echo.
pause

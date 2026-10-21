@echo off
setlocal
chcp 65001 >nul
cd /d "%~dp0"
set "PYTHONIOENCODING=utf-8"
set "FACEBOOK_BROWSER_CHANNEL=chrome"
SocialDataCollector-CLI.exe --interactive
if errorlevel 1 (
    echo.
    echo Ung dung dung do loi. Nhan phim bat ky de dong cua so nay.
    pause >nul
)
endlocal

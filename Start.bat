@echo off
setlocal EnableExtensions
title Universal Converter v3.0
color 0B
cd /d "%~dp0"

:: Use a UTF-8 capable console when available, but keep this launcher ASCII-only
:: so it also works on Windows consoles using legacy code pages.

:MENU
cls
echo.
echo  ============================================
echo       UNIVERSAL FILE CONVERTER v3.0
echo  ============================================
echo.
echo  [1] Start Server
echo  [2] Install / Update Dependencies
echo  [3] Clean Temp Files
echo  [4] Exit
echo.
set "choice="
set /p "choice=  Your choice (1-4): "

if "%choice%"=="1" goto START
if "%choice%"=="2" goto INSTALL
if "%choice%"=="3" goto CLEAN
if "%choice%"=="4" goto EXIT

echo.
echo  Invalid choice!
timeout /t 2 >nul
goto MENU

:PYTHON
:: Prefer Python 3.12, then the default Python launcher, then python.exe.
set "PY_CMD=py -3.12"
%PY_CMD% --version >nul 2>&1
if not errorlevel 1 goto :eof

set "PY_CMD=py"
%PY_CMD% --version >nul 2>&1
if not errorlevel 1 goto :eof

set "PY_CMD=python"
%PY_CMD% --version >nul 2>&1
if not errorlevel 1 goto :eof

set "PY_CMD="
goto :eof

:INSTALL
cls
echo.
echo  [*] Checking Python...
call :PYTHON
if not defined PY_CMD (
    echo  [ERROR] Python was not found.
    echo  Install Python 3.11 or newer from python.org
    echo  Then run this launcher again.
    echo.
    pause
    goto MENU
)
echo  [OK] Using %PY_CMD%
echo.
echo  [*] Installing dependencies...
echo  [*] Internet connection is required for this step.
echo.
%PY_CMD% -m pip install -r requirements.txt
if errorlevel 1 (
    echo.
    echo  [ERROR] Dependency installation failed.
    echo.
    pause
    goto MENU
)
> .installed echo OK
echo.
echo  [OK] Installation complete!
echo.
pause
goto MENU

:START
cls
echo.
echo  [*] Starting Universal Converter...
echo.

call :PYTHON
if not defined PY_CMD (
    echo  [ERROR] Python was not found.
    echo  Install Python 3.11 or newer from python.org
    echo  Then run this launcher again.
    echo.
    pause
    goto MENU
)
echo  [OK] Using %PY_CMD%

if not exist ".installed" (
    echo.
    echo  [INFO] Installing dependencies...
    %PY_CMD% -m pip install -r requirements.txt
    if errorlevel 1 (
        echo.
        echo  [ERROR] Dependency installation failed.
        echo  The server will not be started.
        echo.
        pause
        goto MENU
    )
    > .installed echo OK
) else (
    echo  [OK] Dependencies ready
)

echo.
echo  [INFO] Starting server on port 1453...
echo  [INFO] Your browser should open automatically.
echo  [INFO] Press Ctrl+C to stop the server.
echo  ============================================
echo.

%PY_CMD% -m uvicorn app.main:app --port 1453

if errorlevel 1 (
    echo.
    echo  [ERROR] Server failed to start.
    echo.
    pause
)
goto MENU

:CLEAN
cls
echo.
echo  [*] Cleaning temporary files...
echo.

if exist "temp_uploads" rd /s /q "temp_uploads"
if exist "converted_files" rd /s /q "converted_files"
if exist "__pycache__" rd /s /q "__pycache__"
if exist "app\__pycache__" rd /s /q "app\__pycache__"
if exist "app\converters\__pycache__" rd /s /q "app\converters\__pycache__"

echo  [+] Temporary files cleaned.
echo.
timeout /t 2 >nul
goto MENU

:EXIT
cls
echo.
echo  Goodbye!
echo.
timeout /t 1 >nul
exit /b 0

@echo off
setlocal
cd /d "%~dp0"
if exist "Qwen3.5-4B.exe" goto verify
if not exist "Qwen3.5-4B.exe.part-aa" goto missing
if not exist "Qwen3.5-4B.exe.part-ab" goto missing
echo Joining the two download parts. Please wait...
copy /b "Qwen3.5-4B.exe.part-aa"+"Qwen3.5-4B.exe.part-ab" "Qwen3.5-4B.exe"
if errorlevel 1 goto failed
:verify
echo Verifying the executable. Please wait...
powershell.exe -NoProfile -Command "if ((Get-FileHash -LiteralPath 'Qwen3.5-4B.exe' -Algorithm SHA256).Hash -ne '5eb74a4b498a41a78e52ada02e74269048bb35b66b6710ba0b63a606013f4831') { exit 1 }"
if errorlevel 1 goto failed
echo Starting Qwen locally in CPU mode...
"Qwen3.5-4B.exe" -ngl 0 -c 4096
pause
exit /b
:missing
echo Download both model parts into this folder first.
pause
exit /b 1
:failed
echo Assembly or verification failed. Re-download the parts and remove the incomplete EXE before retrying.
pause
exit /b 1

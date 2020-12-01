@echo off

if "x%1" equ "x" goto :EOF
if "x%2" equ "x" goto :EOF

set server_dir=..\servers\%1
if exist "%server_dir%" rd /Q /S "%server_dir%"
md "%server_dir%"
cd /d "%server_dir%"

where python3 2>NUL
if %ERRORLEVEL% neq 0 (
  python3 -m venv ./venv
  venv\bin\pip3 install %2
) else (
  python -m venv ./venv
  venv\bin\pip install %2
)

echo @echo off ^

%%~dp0\venv\bin\%1.cmd %%* ^

> %1.cmd

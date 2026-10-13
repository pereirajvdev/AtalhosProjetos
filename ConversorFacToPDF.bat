@echo off
cd /d "C:\Users\Joao Castro\Documents\ConversorFacToPDF"
call .venv\Scripts\activate

powershell -NoProfile -Command "$ws = New-Object -ComObject WScript.Shell; $ws.AppActivate((Get-Process -Id $PID).Parent.Id); Start-Sleep -Milliseconds 300; $ws.SendKeys('python src\main.py')"

cmd
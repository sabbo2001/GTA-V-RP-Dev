:loop
@echo Clearing Server Cache Files
cd /d C:\Users\Kinder\Desktop\Serveur-Gta-V-RP-1.0-36.72.271\server
rd /s /q cache
@echo off
cls
@echo Hit Enter In This Window To Restart Server Immediately, Keep This Window Open For Automatic 6 Hour Server Restarts.
start "Server" C:\Users\Kinder\Desktop\Serveur-Gta-V-RP-1.0-36.72.271\server\run.cmd +exec serveur.cfg
timeout /t 21600
taskkill /f /im FXServer.exe
@echo Server Shutdown Successfully.
taskkill /F /FI "WindowTitle eq Server"
@echo Server Is Restarting Now.
goto loop
:loop
@echo Clearing Server Cache Files
cd /d C:\Users\Kinder\Desktop\Serveur-Gta-V-RP-1.1-45.82.400\server
RMDIR /s /q cache
DEL CitizenFX.log
@echo off
cls
@echo Hit Enter In This Window To Restart Server Immediately, Keep This Window Open For Automatic 6 Hour Server Restarts.
RMDIR /s /q C:\Users\Kinder\Desktop\Serveur-Gta-V-RP-1.1-45.82.400\server\cache"
start "Server" C:\Users\Kinder\Desktop\Serveur-Gta-V-RP-1.1-45.82.400\server\run.cmd +exec serveur.cfg
timeout /t 21600
taskkill /f /im FXServer.exe
@echo Server Shutdown Successfully.
taskkill /F /FI "WindowTitle eq Server"
@echo Server Is Restarting Now.
goto loop
:loop
@echo Clearing Server Cache Files
cd /d C:\Users\Serv\Desktop\Serveur-Gta-V-RP-1.1-45.81.397\server
rm /s /q cache
@echo off
cls
@echo Hit Enter In This Window To Restart Server Immediately, Keep This Window Open For Automatic 6 Hour Server Restarts.
RMDIR /s /q C:\Users\Serv\Desktop\Serveur-Gta-V-RP-1.1-45.81.397\server\cache"
start "Server" C:\Users\Serv\Desktop\Serveur-Gta-V-RP-1.1-45.81.397\server\run.cmd +exec serveur.cfg
timeout /t 21600
taskkill /f /im FXServer.exe
@echo Server Shutdown Successfully.
taskkill /F /FI "WindowTitle eq Server"
@echo Server Is Restarting Now.
goto loop
@echo off
echo -------------------------------------------------
echo FiveM Launcher 1.0 Server Version Gta V RP 1.0-36.72.280
echo -------------------------------------------------
echo ClearCache ....
RMDIR /s /q C:\Users\Kinder\Desktop\Serveur-Gta-V-RP-1.0-36.72.280\server\cache"
echo -------------------------------------------------
echo Vidage Cache OK.
echo -------------------------------------------------
echo Pour relancer votre serveur, faite CTRL + C  puis "run.bat"
echo .
echo Appuyer sur une touche pour lancer votre serveur
echo .
pause > nul
CLS
echo ------------------------------------------
echo lancement du serveur 
echo ------------------------------------------
@echo off
color 0
Title GTARPFIVEMLAUNCHER
echo.
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: --------------------- 1%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: #-------------------- 2%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ##------------------- 3%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ###------------------ 10%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ####----------------- 15%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: #####---------------- 20%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ######--------------- 25%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: #######-------------- 50%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ########------------- 55%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: #########------------ 40%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ##########----------- 45%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ###########---------- 50%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ############--------- 55%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: #############-------- 60%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ##############------- 65%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ###############------ 70%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ################----- 80%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: #################---- 85%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ##################--- 90%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ###################-- 95%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ####################- 97%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ##################### 100%%
echo ----------------------------------
GOTO END
:END
cls
echo.
echo.
echo Setup complete...
echo ----------------------------------
echo Progress: ##################### 100%%
echo.
echo.

cd C:\Users\Kinder\Desktop\Serveur-Gta-V-RP-1.0-36.72.280\server\
cmd /k run.cmd +exec serveur.cfg


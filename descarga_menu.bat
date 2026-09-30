@echo off
chcp 65001>nul
color 0A
title Descargador Pro 2026 - YouTube & Twitch (All-in-One)

:: --- COMPROBACIÓN DE ACTUALIZACIÓN ---
echo [SISTEMA] Verificando actualizaciones para yt-dlp...
:: El comando -U busca la última versión y la instala automáticamente
yt-dlp -U
echo.

:INICIO
cls
echo ============================================
echo      DESCARGADOR MULTIMEDIA - VERSION 2026
echo ============================================
echo [1] YouTube: 1080p (Completo)
echo [2] YouTube: 1080p (SOLO UN TROZO)
echo [3] YouTube: Solo Audio (mp3)
echo [4] Twitch:  VOD Completo (Directo pasado)
echo [5] Twitch:  EXTRACTO DE VOD (Trozo de horas)
echo [6] Twitch:  DESCARGAR UN CLIP
echo [7] Salir
echo ============================================
set /p OPCION=Elige una opción (1-7): 

if "%OPCION%"=="1" goto DO1080
if "%OPCION%"=="2" goto DO1080PART
if "%OPCION%"=="3" goto DOAUDIO
if "%OPCION%"=="4" goto DOTWITCHFULL
if "%OPCION%"=="5" goto DOTWITCHPART
if "%OPCION%"=="6" goto DOTWITCHCLIP
if "%OPCION%"=="7" goto FIN
goto INICIO

:DO1080
cls
set /p URL=Pegue la URL de YouTube: 
yt-dlp.exe -f "bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/best" --merge-output-format mp4 "%URL%"
pause
goto INICIO

:DO1080PART
cls
set /p URL=Pegue la URL de YouTube: 
set /p TIEMPO=Indique el tramo (HH:MM:SS-HH:MM:SS): 
yt-dlp.exe -f "bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/best" --download-sections "*%TIEMPO%" --merge-output-format mp4 "%URL%"
pause
goto INICIO

:DOAUDIO
cls
set /p URL=Pegue la URL: 
yt-dlp.exe -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 "%URL%"
pause
goto INICIO

:DOTWITCHFULL
cls
set /p URL=Pegue la URL del VOD de Twitch: 
yt-dlp.exe -f best --ext mp4 --concurrent-fragments 5 "%URL%"
pause
goto INICIO

:DOTWITCHPART
cls
set /p URL=Pegue la URL del VOD de Twitch: 
set /p TIEMPO=Indique el tramo (HH:MM:SS-HH:MM:SS): 
echo Descargando extracto de VOD...
yt-dlp.exe -f best --download-sections "*%TIEMPO%" --concurrent-fragments 5 --merge-output-format mp4 "%URL%"
pause
goto INICIO

:DOTWITCHCLIP
cls
set /p URL=Pegue la URL del CLIP de Twitch: 
echo.
echo Descargando clip en la mejor resolución...
yt-dlp.exe -f best --ext mp4 "%URL%"
if %errorlevel% neq 0 echo ❌ Error al descargar el clip. Verifica que la URL sea válida.
pause
goto INICIO

:FIN
exit
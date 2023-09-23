@shift /0
@shift /0
@echo off
chcp 65001 > nul

echo.
echo --------------------------------------------
echo         OPTICRAFT LAUNCHER - VERSIÓN 1.2
echo --------------------------------------------
echo.
echo Versiones Crackeadas y Desarrolladas por OptiJuegos
echo Israel - Creador del Launcher
echo.
echo --------------------------------------------
echo.

set "opti_data_folder=%~dp0OptiData"
set "temp_dir=%~dp0temp"
set "opti_process="

:: Detectar la arquitectura del sistema
set "arch="
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    set "arch=64"
) else (
    set "arch=32"
)

:: Directorio de 7-Zip
set "7zip_dir=7zr.exe"

:: Crear la carpeta de descargas si no existe
if not exist "%temp_dir%" mkdir "%temp_dir%"

:menu
echo ------------------------------------------
echo         OPCIONES DEL MENÚ
echo ------------------------------------------
echo 1. Descargar/Jugar OptiCraft 1.7.3.1
echo 2. Descargar/Jugar OptiCraft 1.9.1.0
echo 3. Descargar/Jugar OptiCraft 1.12.0
echo 4. Descargar/Jugar OptiCraft 1.14.31
echo 5. Descargar/Jugar OptiCraft 1.16.12
echo 6. Descargar/Jugar OptiCraft 1.17.30
echo 7. Descargar/Jugar OptiCraft 1.18.31
echo 8. Descargar/Jugar OptiCraft 1.19.52 
echo 9. Descargar/Jugar OptiCraft 1.20.10
echo 10. Descargar/Jugar Craftman MOD
echo 11. Salir
echo.

set /p "choice=Selecciona una opción (1/2/3/4/5/6/7/8/9/10/11): "

) else if "%choice%"=="1" (
    set "version_folder=OptiCraft 1.7.3.1 By OptiJuegos"
    set "version_file=OptiCraft.exe"
    set "version_url=https://www.dropbox.com/scl/fi/0ixllv52xgxziego6h5mz/OptiCraft-1.7.3.1-By-OptiJuegos.7z?rlkey=dgtosjwxfywmftjdxym8204bn&dl=0"
    call :download_and_run
) else if "%choice%"=="2" (
    set "version_folder=OptiCraft 1.9.1.0 By OptiJuegos"
    set "version_file=OptiCraft.exe"
    set "version_url=https://www.dropbox.com/scl/fi/ad265hdhzke7h1bli5iea/OptiCraft-1.9.1.0-By-OptiJuegos.7z?rlkey=qe03wc3r7dbth00u7m96d87jp&dl=0"
    call :download_and_run
) else if "%choice%"=="3" (
    set "version_folder=OptiCraft 1.12.0 By OptiJuegos"
    set "version_file=OptiCraft.exe"
    set "version_url=https://www.dropbox.com/scl/fi/ags4y5on7l5902jywt1d9/OptiCraft-1.12.0-By-OptiJuegos.7z?rlkey=fvlqi27afj3xkhdng3wpnz8ho&dl=0"
    call :download_and_run
) else if "%choice%"=="4" (
    set "version_folder=OptiCraft 1.14.31 By OptiJuegos"
    set "version_file=OptiCraft.exe"
    set "version_url=https://www.dropbox.com/scl/fi/m3agprdc8ugh0mir5wm2t/OptiCraft-1.14.31-By-OptiJuegos.7z?rlkey=kb3dcgoo8tcs550rkq2fn3w5p&dl=0"
    call :download_and_run
) else if "%choice%"=="5" (
    set "version_folder=OptiCraft 1.16.12 By OptiJuegos"
    set "version_file=OptiCraft.exe"
    set "version_url=https://www.dropbox.com/scl/fi/tiik488mang32rga6k7j7/OptiCraft-1.16.12-By-OptiJuegos.7z?rlkey=s38hvexxgk84onut6m1n2nt3r&dl=0"
    call :download_and_run
) else if "%choice%"=="6" (
    set "version_folder=OptiCraft 1.17.30 By OptiJuegos"
    set "version_file=OptiCraft.exe"
    set "version_url=https://www.dropbox.com/scl/fi/533v4cyauiq04rjre9vm0/OptiCraft-1.17.30-By-OptiJuegos.7z?rlkey=lr616du0v6ugxrbd5lqptv6ws&dl=0"
    call :download_and_run
) else if "%choice%"=="7" (
    set "version_folder=OptiCraft 1.18.31 By OptiJuegos"
    set "version_file=OptiCraft.exe"
    set "version_url=https://www.dropbox.com/scl/fi/lag95nq2fr760v5xkkb0a/OptiCraft-1.18.31-By-OptiJuegos.7z?rlkey=5xbgcqrok92jzrw8v5424n4bb&dl=0"
    call :download_and_run
) else if "%choice%"=="8" (
    set "version_folder=OptiCraft 1.19.52 By OptiJuegos"
    set "version_file=OptiCraft.exe"
    set "version_url=https://www.dropbox.com/scl/fi/oixcn95pvp5rivr2db10v/OptiCraft-1.19.52-By-OptiJuegos.7z?rlkey=sge39jdm2w944d9g7wkv2brk3&dl=0"
    call :download_and_run
) else if "%choice%"=="9" (
    set "version_folder=OptiCraft 1.20.10 By OptiJuegos"
    set "version_file=OptiCraft.exe"
    set "version_url=https://www.dropbox.com/scl/fi/38imkms1nlgpl8tyyan3b/OptiCraft-1.20.10-By-OptiJuegos.7z?rlkey=tkfh661lgjkwc6hbjlhpzgppx&dl=0"
    call :download_and_run
) else if "%choice%"=="10" (
    set "version_folder=Craftsman MOD PC PORT By OptiJuegos"
    set "version_file=Craftsman.exe"
    set "version_url=https://www.dropbox.com/scl/fi/fj5tm0ss2l5ys4k6kpl4p/Craftsman_MOD_PC_PORT_By_OptiJuegos.7z?rlkey=w9vzljue9ednoitzyq0iojnu3&dl=0"
    call :download_and_run
) else if "%choice%"=="11" (
    exit
)

:: Esperar a que el proceso de OptiCraft termine
if defined opti_process (
    echo Esperando a que OptiCraft se cierre...
    :wait_opti
    timeout /t 1 /nobreak > nul
    tasklist | find /i "%opti_process%" > nul
    if not errorlevel 1 (
        goto wait_opti
    )
)

goto menu

:download_and_run
if exist "%opti_data_folder%\%version_folder%\%version_file%" (
    echo La versión ya está instalada. Ejecutando...
    start "" "%opti_data_folder%\%version_folder%\%version_file%"
    set "opti_process=%version_file%"
) else (
    echo Descargando %version_folder%...
    curl -L -o "%temp_dir%\%version_folder%.7z" "%version_url%"
    7zr x "%temp_dir%\%version_folder%.7z" -o"%opti_data_folder%" -r -aoa
    del "%temp_dir%\%version_folder%.7z"
    echo %version_folder% descargado y descomprimido correctamente.
    start "" "%opti_data_folder%\%version_folder%\%version_file%"
    set "opti_process=%version_file%"
)
goto menu

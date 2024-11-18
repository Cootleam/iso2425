@echo off
rem Comprobar si se pasaron los parámetros
if "%1"=="" (
    echo Debes proporcionar el nombre de la carpeta.
    exit /b
)

if "%2"=="" (
    echo Debes proporcionar el nombre del archivo.
    exit /b
)

rem Crear la carpeta pasada como primer parámetro
mkdir "%1"

rem Verificar si la carpeta se creó correctamente
if exist "%1" (
    echo Carpeta "%1" creada exitosamente.
) else (
    echo Error al crear la carpeta "%1".
    exit /b
)

rem Crear un archivo vacío con el nombre pasado como segundo parámetro dentro de la carpeta
echo. > "%1\%2"

rem Verificar si el archivo se creó correctamente
if exist "%1\%2" (
    echo Archivo "%2" creado en la carpeta "%1" exitosamente.
) else (
    echo Error al crear el archivo "%2" en la carpeta "%1".
)

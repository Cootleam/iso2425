@echo off
:MENU
cls
echo.
echo ********** Menu de Opciones **********
echo 1. Crear fichero con nombre pedido al usuario
echo 2. Mostrar el arbol de directorios de la carpeta de usuario
echo 3. Mostrar archivos con extension .txt
echo 4. Crear directorios: alfredoff, marinapg y ramonam
echo 5. Copiar el contenido de la carpeta de usuario al Escritorio
echo 6. Salir
echo.
set /p option=Selecciona una opcion (1-6): 

if "%option%"=="1" goto CrearFichero
if "%option%"=="2" goto MostrarArbol
if "%option%"=="3" goto MostrarTXT
if "%option%"=="4" goto CrearDirectorios
if "%option%"=="5" goto CopiarContenido
if "%option%"=="6" exit

:CrearFichero
cls
echo Introduce el nombre del archivo que quieres crear (sin extension):
set /p filename=Nombre: 
echo. > "%filename%.txt"
echo Archivo "%filename%.txt" creado exitosamente!
pause
goto MENU

:MostrarArbol
cls
echo Mostrando el arbol de directorios de la carpeta de usuario:
dir %USERPROFILE% /s /b
pause
goto MENU

:MostrarTXT
cls
echo Mostrando archivos con extension .txt en la carpeta de usuario:
dir %USERPROFILE%\*.txt /b
pause
goto MENU

:CrearDirectorios
cls
echo Creando los directorios alfredoff, marinapg y ramonam en el directorio actual...
mkdir alfredoff
mkdir marinapg
mkdir ramonam
echo Directorios creados exitosamente!
pause
goto MENU

:CopiarContenido
cls
echo Copiando el contenido de la carpeta de usuario al Escritorio...
xcopy /E /I /H /Y "%USERPROFILE%" "%USERPROFILE%\Desktop\"
echo Contenido copiado exitosamente al Escritorio!
pause
goto MENU

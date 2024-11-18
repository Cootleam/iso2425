@echo off
:: Verificar que se hayan pasado 3 argumentos
if "%1"=="" (
    echo Se necesita un primer numero.
    exit /b
)
if "%2"=="" (
    echo Se necesita un segundo numero.
    exit /b
)
if "%3"=="" (
    echo Se necesita un tercer numero.
    exit /b
)

:: Asignar los parámetros a variables
set /a num1=%1
set /a num2=%2
set /a num3=%3

:: Calcular la suma
set /a suma=%num1% + %num2% + %num3%

:: Calcular la media (utilizando división de enteros)
set /a media=%suma% / 3

:: Mostrar el resultado
echo La media de %num1%, %num2% y %num3% es: %media%

pause

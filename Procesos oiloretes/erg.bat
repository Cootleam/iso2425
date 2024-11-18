@echo off
rem Definir las variables
set "nombre=Juan"  rem Asigna tu nombre a la variable nombre
set /a var1=10     rem Asigna el valor 10 a la primera variable
set /a var2=20     rem Asigna el valor 20 a la segunda variable

rem Sumar las dos variables
set /a suma=%var1% + %var2%

rem Mostrar los resultados
echo Nombre: %nombre%
echo La suma de %var1% y %var2% es: %suma%

pause

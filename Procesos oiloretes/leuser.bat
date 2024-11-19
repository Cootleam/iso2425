@echo off

set /p User Name="Pome nombee "
set /p Password="Oye dame contra "
set /p Group_Name="E payo qua e tu cancha "
net user %User_Name% %Password% /add
net localgroup %Group_Name% /add
net user %User_Name% 
net localgroup %Group_Name%

net user 
pause
net localgroup
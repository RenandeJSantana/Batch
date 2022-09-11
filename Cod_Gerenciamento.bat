@echo off 
title Gerenciamento de Pasta e Arquivos 
mode 60,30 
color 0a 

:inicio 
cls 
echo. 
echo            (0   0) 
echo   ---oo0---  (_)  ---0oo---  
echo. 
echo [1] Gerar Diversos Arquivos 
echo [2] Organizar Arquivos Pasta 
echo [3] Ocultar Pastas e Arquivos 
echo [4] Exibir Pastas e Arquivos 
echo [5] Excluir Pastas e Arquivos 
echo [e] Encerrar o Script 
echo ------------------------------ 
echo. 
set /p op=Escolha sua Opcao : 
if %op% == 1 (goto:gerar) 
if %op% == 2 (goto:organizar) 
if %op% == 3 (goto:ocultar) 
if %op% == 4 (goto:exibir) 
if %op% == 5 (goto:excluir) 
if /i %op% == e (goto:sair) else ( 
echo. 
echo ------------------------------ 
echo          Opcao Invalida! 
echo ------------------------------ 
echo. 
pause 
goto:inicio) 

:gerar 
echo. 
set /p arquivo=Digite o nome do arquivo: 
set /p qtde=Digite a quantidade de arquivos: 
set /p ext=Digite o tipo da extensao do arquivo: 
rem exemplo de estrutura de repeticao 
for /L %%n in (1,1,%qtde%) do (echo fatec > %arquivo%%%n.%ext%) 
echo. 
echo ------------------------------ 
echo Arquivos gerados com sucesso! 
echo ------------------------------ 
echo. 
pause 
goto:inicio 

:organizar 
echo. 
set /p pasta=Digite o nome da pasta ser criada: 
set /p ext=Digite a extensao do arquivo: 
md %pasta% 
move *.%ext% C:\Users\lab5\Desktop\%pasta%\ 
echo. 
echo ------------------------------ 
echo Arquivos organizados com sucesso! 
echo ------------------------------ 
echo. 
pause 
goto:inicio 

:ocultar 
echo. 
set /p pasta=Digite o nome da pasta a ser ocultada: 
attrib %pasta% +r +h 
echo. 
echo ------------------------------ 
echo Pasta ocultada com sucesso! 
echo ------------------------------ 
echo. 
pause 
goto:inicio 

:exibir 
echo. 
set /p pasta=Digite o nome da pasta a ser exibida: 
attrib %pasta% -r -h 
echo. 
echo ------------------------------ 
echo Pasta exibida com sucesso! 
echo ------------------------------ 
echo. 
pause 
goto:inicio  

:excluir 
set /p pasta=Digite o nome da pasta a ser excluida: 
set /p deleta=Deseja realmente excluir? [S/N]: 
if /i %deleta% == s ( 
c: 
cd C:\Users\lab5\Desktop\ 
del /f /s /q %pasta% 
rd %pasta% 
echo. 
echo ------------------------------ 
echo Arquivos e pasta excluida com sucesso! 
echo ------------------------------ 
echo. 
pause 
goto:inicio) else ( 
goto:inicio) 

:sair 
set /p resp=Deseja encerrar o script? [S/N]: 
if /i %resp% == s (exit) else (goto:inicio) 

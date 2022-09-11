rem LOGIN 

@echo off 
title login 
mode 60,30 
color 0c 

:inicio 
cls 
echo. 
echo   ___                    ___   
echo  (o o)                  (o o)  
echo (  V  ) Login          (  V  ) 
echo --m-m--------------------m-m-- 
echo. 
set /p user=USUARIO: 
set /p pass=SENHA: 
if /i %user% == fatec (goto:senha) 

:senha 
if /i %pass% == 123  (goto:login) else (  
echo. 
echo Login Invalido ! 
echo. 
pause 
goto:inicio) 

:login 
echo. 
echo Logado com sucesso! 
echo. 
pause 
call menu_principal.bat 


rem Menu principal 


@echo off 
title Menu princupal 
mode 60,30 
color 0c 

:inicio 
cls 
echo. 
echo   ___                    ___   
echo  (o o)                  (o o)  
echo (  V  ) MENU PRINCIPAL (  V  ) 
echo --m-m--------------------m-m-- 
echo. 
echo [P] PACOTE OFFICE 
echo [S] SERVICOS DE REDE 
echo [A] APLICATIVOS WINDOWS 
echo [E] ENCERRA SESSAO 
echo [F] FINALIZAR PROGRAMA 
echo. 
set /p op=Digite uma opcao desejada: 
if /i %op% equ P (goto:PACOTE) 
if /i %op% equ S (goto:SERVICOS) 
if /i %op% equ A (goto:APLICATIVOS) 
if /i %op% equ E (goto:ENCERRA) 
if /i %op% equ F (goto:FINALIZA) 
echo. 
echo ------------------------------------ 
echo opcao invalida ! 
echo ------------------------------------ 
echo. 
pause 
goto:inicio) 

:PACOTE 
start pacote.bat 
goto:inicio 

:SERVICOS 
start servicos.bat 
goto:inicio 

:APLICATIVOS 
start aplicativos.bat 
goto:inicio 

:ENCERRA 
echo. 
set /p resp=Deseja realmente encerrar? [s/n]: 
if /i %resp% equ s (exit) else (goto:inicio) 

:FINALIZA 
echo. 
set /p resp=Deseja realmente encerrar o programa? [s/n]: 
if /i %resp% equ s (exit) else (goto:inicio) 


rem PACOTE.bat 


@echo off 
title Menu princupal 
mode 60,30 
color 01 

:inicio 
cls 
echo. 
echo   ___                    ___   
echo  (o o)                  (o o)  
echo (  V  ) PACOTE OFFICE  (  V  ) 
echo --m-m--------------------m-m-- 
echo. 
echo [W] WORD 
echo [E] EXCEL 
echo [A] ACCESS 
echo [P] POWER POINT 
echo [R] RETORNAR AO MENU 
echo -------------------------------- 
echo. 
set /p op=Digite uma opcao desejada: 
if /i %op% equ W (goto:WORD) 
if /i %op% equ E (goto:EXCEL) 
if /i %op% equ A (goto:ACCESS) 
if /i %op% equ P (goto:POWER) 
if /i %op% equ R (goto:RETORNAR) 
echo. 
echo ------------------------------------ 
echo opcao invalida ! 
echo ------------------------------------ 
echo. 
pause 
goto:inicio) 

:WORD 
start winword.exe 
goto:inicio 

:EXCEL 
start excel.exe 
goto:inicio 

:ACCESS 
start msaccess.exe 
goto:inicio 

:POWER 
start powerpnt.exe 
goto:inicio 

:RETORNAR 
echo. 
set /p resp=Deseja realmente sair? [s/n]: 
if /i %resp% equ s (exit) else (goto:inicio) 

 
rem SERVIÇOS 

 
@echo off 
title Menu princupal 
mode 60,30 
color 0a 

:inicio 
cls 
echo. 
echo   ___                    ___   
echo  (o o)                  (o o)  
echo (  V  ) SERVICOS REDE  (  V  ) 
echo --m-m--------------------m-m-- 
echo. 
echo [N] NAVEGAR NA INTERNET 
echo [T] TESTAR CONEXAO DE REDE 
echo [O] OBTER IP MAQUINA 
echo [R] RETORNAR AO MENU 
echo -------------------------------- 
echo. 
set /p op=Digite uma opcao desejada: 
if /i %op% equ N (goto:NAVEGAR) 
if /i %op% equ T (goto:TESTAR) 
if /i %op% equ O (goto:OBTER) 
if /i %op% equ R (goto:RETORNAR) 
echo. 
echo ------------------------------------ 
echo opcao invalida ! 
echo ------------------------------------ 
echo. 
pause 
goto:inicio) 

:NAVEGAR 
echo. 
set /p site=Digite um endereco web: 
start %site% 
goto:inicio 

:TESTAR 
echo. 
set /p conexao=Digite o IP ou endereco web: 
ping %conexao% -t 
goto:inicio 

:OBTER 
echo. 
set /p testar=Digite o IP da maquina ou endereco web: 
ping %testar% -t 
goto inicio 

:RETORNAR 
echo. 
set /p resp=Deseja realmente sair? [s/n]: 
if /i %resp% equ s (exit) else (goto:inicio) 
 
 
rem APLICATIVOS 

 
@echo off 
title Menu princupal 
mode 60,30 
color 0B 

:inicio 
cls 
echo. 
echo   ___                          ___   
echo  (o o)                        (o o)  
echo (  V  ) APLICATIVOS WINDOWS  (  V  ) 
echo --m-m--------------------------m-m-- 
echo. 
echo [c] CALCULADORA 
echo [t] TECLADO VIRTUAL 
echo [w] WINDOWS EXPLORE 
echo [p] PAINT 
echo [b] BLOCO DE NOTAS 
echo [r] RETORNAR AO MENU 
echo -------------------------------- 
echo. 
set /p op=Digite uma opcao desejada: 
if /i %op% equ C (goto:CALCULADORA) 
if /i %op% equ T (goto:TECLADO VIRTUAL) 
if /i %op% equ W (goto:WINDOWS) 
if /i %op% equ P (goto:PAINT) 
if /i %op% equ B (goto:BLOCO DE NOTAS) 
if /i %op% equ R (goto:RETORNAR) 
echo. 
echo ------------------------------------ 
echo opcao invalida ! 
echo ------------------------------------ 
echo. 
pause 
goto:inicio) 

:CALCULADORA 
start calc.exe 
goto:inicio 

:TECLADO VIRTUAL 
start osk.exe 
goto:inicio 

:WINDOWS 
start explorer.exe 
goto:inicio 

:PAINT 
start mspaint.exe 
goto:inicio 

:BLOCO DE NOTAS 
start notepad.exe 
goto:inicio 

:RETORNAR 
echo. 
set /p resp=Deseja realmente sair? [s/n]: 
if /i %resp% equ s (exit) else (goto:inicio) 

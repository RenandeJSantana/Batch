@echo off
rem deixar o programa nao visivel
title Aula 01 - IES001
rem titulo do programa
mode 60,30
rem dimensao do programa
color 0a
rem coloracao fundo de tela e caracteres
:inicio
rem inicio do programa
cls 
rem limpar dados
echo.
rem pula uma linha
echo        ( o o )
echo ====Ooo--(_)==ooO====
echo     MENU PRINCIPAL
echo =====================
echo [1] Executar Word
echo [2] Executar Excel
echo [3] Teclado Virtual
echo [4] Calculadora
echo [5] Paint
echo [6] Navegar
echo [7] Testar Conexao Rede
echo [8] Encerrar o Programa
echo ========================
echo.
set /p op=Digite a opcao desejada:
rem criar variavel (input pelo teclado - set/p)

if %op% == 1 (goto:texto)
if %op% == 2 (goto:planilha)
if %op% == 3 (goto:teclado)
if %op% == 4 (goto:calculo)


if %op% == 5 (goto:arte)
if %op% == 6 (goto:web)
if %op% == 7 (goto:teste)
if %op% == 8 (goto:sair) else (
    echo.
    echo ---------------------
    echo Opcao Invalida!
    echo ---------------------
    pause > nul
    goto inicio)

:texto
start winword.exe
goto inicio

:planilha
start excel.exe
goto inicio

:teclado
start osk.exe
goto inicio

:calculo
start calc.exe
goto inicio

:arte
start mspaint.exe
goto inicio

:web
echo.
set /p site=Digite o endereço da pagina:
start %site%
goto inicio

:teste
echo.
set /p testar=Digite o IP da maquina ou endereco web:
ping %testar% -t  
goto inicio
rem ctrl+C para o looping

:sair
set /p resp=Deseja realmente sair? [S/N]:
if /i %resp% == s (exit) else (goto:inicio)
rem independente se for maiuscula ou minuscula ele reconhece

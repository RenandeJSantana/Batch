@echo off 
title Exemplo de Numeros Randomicos e Contador 
mode 60,30 
color 0a 
rem atribui o valor direto na variavel 
set /a cont=0 
echo. 
echo Sorteio de numeros de 0 a 100  
echo. 

:inicio 
set /p inc=Deseja iniciar o sorteio? [S/N]: 
if /i %inc% == s (goto:sorteio) else (goto:inicio) 

:sorteio  
cls 
set /a numero=(%random% %% 100) + 1 
set /a cont=%cont + 1 
echo. 
echo ---------------------------------- 
echo Numero sorteado: %numero% 
echo Qtde de Sorteios: %cont% 
echo ---------------------------------- 
echo. 
set /p resp=Novo sorteio? [S/N]: 
if /i %resp% == s (goto:sorteio) else (exit)  


rem Outra alternativa 


@echo off 
title Exemplo de Estrutura de Repeticao 
mode 60,30 
color 0a 

:play 
set /a cont=5 
set /a numero=(%random% %%50) + 1 

:inicio 
cls 
echo. 
echo                  ( o o ) 
echo ==============Ooo--(_)--ooO============== 
echo ADIVINHE O NUMERO SORTEADO ENTRE 01 E 50     
echo ----------------------------------------- 
echo     QUANTIDADE DE TENTATIVAS: %cont% 
echo ----------------------------------------- 
echo ========================================= 
echo. 
set /p palp=DIGITE SEU PALPITE: 
if %palp% gtr 50 ( 
echo. 
echo ------------------------------------------ 
echo          Digite o valor entre 1 e 50 !!! 
echo ------------------------------------------ 
pause 
goto:inicio 
) else (goto:jogo) 

:jogo 
if %palp% gtr %numero% ( 
echo. 
echo ------------------------------------------ 
echo          Digite um numero menor !!! 
echo ------------------------------------------ 
pause)  
if %palp% lss %numero% ( 
echo. 
echo ------------------------------------------ 
echo          Digite um numero maior !!! 
echo ------------------------------------------ 
pause)  
if %palp% equ %numero% ( 
echo. 
echo ------------------------------------------ 
echo          Parabens vc ganhou !!! 
echo      O numero sorteado foi: %numero% 
echo ------------------------------------------ 
pause 
goto:fim 
) 
if %cont% equ 1 ( 
echo. 
echo ------------------------------------------ 
echo             Vc perdeu !!! 
echo     O numero sorteado era: %numero% 
echo ------------------------------------------ 
pause 
goto:fim 
)  
set /a cont=%cont% - 1 
goto:inicio 

:fim 
echo. 
set /p resp=Deseja jogar novamente? [S/N]: 
if /i %resp% == s (goto:play)  
else (exit) 

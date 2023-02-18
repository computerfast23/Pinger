@echo off
@mode con cols=60 lines=20
title Pinger - Medidor de ms  
color 1a
echo:
echo:
echo:	 ____  ____  _  _  ___   ___  ____  ____ 
echo:	(  _ \(_  _)( \( )/ __) / __)( ___)(  _ \
echo: 	)___/ _)(_  )  (( (_-.( (_-. )__)  )   /
echo:	(__)  (____)(_)\_)\___/ \___/(____)(_)\_)
echo:
echo:
echo:	
echo:			Mide tu ping! 
echo:  			     by
echo:			 computer23
echo:
echo:
echo:
echo:
echo:v1.0
pause
:selector
color 07
cls
@mode con cols=80 lines=7
echo:Donde quiere hacer ping?
set/p ipod=Coloque la IP o dominio:
ping %ipod%
pause
cls
echo:Desea generar un log?
echo: (S) SI (N) NO
set/p of=Option:

if %of%==S goto si      (goto Option) 
if %of%==s goto si      (goto Option)  
if %of%==N goto no        (goto Option) 
if %of%==n goto no        (goto Option)   

:si
cls
echo: Creando...
cd %USERPROFILE%\Desktop
ping %ipod% >%ipod%.txt
goto selector

:no
goto selector


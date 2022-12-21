::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJGyX8VAjFDxBXxCDKmT6V4k45//14+WGpl4hQ+s5cbDI07OAIews/k3heJkj325VivRZVUIMMBuoYW8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdFy5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSTk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIAIRVTSRbi
::eg0/rx1wNQPfEVWB+kM9LVsJDDSLMmy/FNU=
::fBEirQZwNQPfEVWB+kM9LVsJDDSLMmy/FNU=
::cRolqwZ3JBvQF1fEqQITIB5XR0SWNG76FrwS76mb
::dhA7uBVwLU+EWG2M8UFiewtGQw6HP3+pZg==
::YQ03rBFzNR3SWATEwEo1K0kHXBaNNm65EqZ8
::dhAmsQZ3MwfNWATEwEo1K0kHXBaNNm65EqZ8
::ZQ0/vhVqMQ3MEVWAtB9wHBNRT1bRLHm1DLAf/Pub
::Zg8zqx1/OA3MEVWAtB9wHBNRT1bRLHm1DLAf/Pub
::dhA7pRFwIByZRRmq+wI4KRlGTRfCOXiuA/Ud+uvz5vyI4l4UFOwwOJvS37qLM6Aa5FHhZ5gowjs6
::Zh4grVQjdCuDJGyX8VAjFDxBXxCDKmT6V4k47fvw++WXnn0UWuU6asHewrHu
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
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


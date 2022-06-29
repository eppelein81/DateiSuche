@echo off
color 0f
title Datei-Suche
echo Hier wird nach Namen von Dateien gesucht mit Auflistung nach:
echo -Besitzer
echo -Erstelldatum
echo -und einem eingegebenen Filter
echo -und einer Speicherung des Ergebnisses in eine separate Datei
echo.
pause
cls
:1
set /p var1=Welches Verzeichnis (z.B. C oder D)? 
cls
set /p var2=Nach was soll gefiltert werden (z.B. ein Wort oder eine Zahl)? 
cls 
set /p var3=Name und Praefix der Ausgabe (z.B. 1.txt oder neu.csv)? 
cls
echo Es wird im Verzeichnis %var1% gesucht ... 
echo ... und die Ausgabe wird nach %var2% gefiltert ...
echo ... und in die Datei %var3% ausgegeben
echo.
echo Ist das richtig?
set /p var4=j/n? - 
if /i "%var4%"=="j" goto 2 
if /i "%var4%"=="n" goto 1
:2
echo on
%var1%:
cd \
echo Datei ist mit folgender Suche erstellt worden: "dir /Q /ON /S | findstr /i "%var2%"" > c:\users\%username%\desktop\%var3%
echo. >> c:\users\%username%\desktop\%var3%
dir /Q /ON /S | findstr /i "%var2%" >> c:\users\%username%\desktop\%var3%
@echo off
cls
echo Unter c:\users\%username%\desktop\%var3% ist die Datei zu finden
pause

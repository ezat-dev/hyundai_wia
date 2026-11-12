@echo off
REM ============================================
REM  WIA CCF web server launcher
REM  Double-click to start the server.
REM  Keep this window open while the server is running.
REM  Press Ctrl+C in this window to stop it.
REM ============================================

set "JAVA_HOME=C:\Program Files\Java\jdk1.8.0_503"
set "MAVEN_HOME=D:\SW\apache-maven-3.9.9"
set "PATH=%MAVEN_HOME%\bin;%JAVA_HOME%\bin;%PATH%"

cd /d "%~dp0"

echo.
echo ============================================
echo  Checking MariaDB (local DB) service status...
echo ============================================
sc query MySQL | find "RUNNING" >nul
if errorlevel 1 (
    echo MariaDB service is stopped. Starting it now...
    net start MySQL
) else (
    echo MariaDB service is already running.
)

echo.
echo ============================================
echo  Starting server (offline mode).
echo  Once it is ready, open this address in a browser:
echo    http://localhost:8080/DHT/
echo ============================================
echo.

call mvn -o tomcat7:run

pause

@echo off
REM ============================================
REM  WIA 연속로(CCF) 웹 서버 실행 스크립트
REM  더블클릭하면 서버가 실행되고, 실행 중에는
REM  이 창을 닫지 말고 그대로 두세요.
REM  종료하려면 이 창에서 Ctrl+C 를 누르세요.
REM ============================================

set "JAVA_HOME=C:\Program Files\Java\jdk1.8.0_503"
set "MAVEN_HOME=D:\SW\apache-maven-3.9.9"
set "PATH=%MAVEN_HOME%\bin;%JAVA_HOME%\bin;%PATH%"

cd /d "%~dp0"

echo.
echo ============================================
echo  MariaDB(로컬 DB) 서비스 상태 확인 중...
echo ============================================
sc query MySQL | find "RUNNING" >nul
if errorlevel 1 (
    echo MariaDB 서비스가 꺼져 있어 시작합니다...
    net start MySQL
) else (
    echo MariaDB 서비스 정상 동작 중.
)

echo.
echo ============================================
echo  서버를 시작합니다. (오프라인 모드)
echo  잠시 후 아래 주소로 접속하세요:
echo    http://localhost:8080/DHT/
echo ============================================
echo.

call mvn -o tomcat7:run

pause

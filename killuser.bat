@echo off

if "%1" == "" goto PARAM_ERROR

SQLPLUS -s SYS/password@XE AS SYSDBA @killuser.sql %1

echo %1 のセッションを切断しました。
exit /B

:PARAM_ERROR
echo 引数にセッションを破棄したいユーザ名(スキーマ名)を指定してください。
exit /B

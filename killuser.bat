@echo off

if "%1" == "" goto PARAM_ERROR

SQLPLUS -s SYS/password@XE AS SYSDBA @killuser.sql %1

echo %1 �̃Z�b�V������ؒf���܂����B
exit /B

:PARAM_ERROR
echo �����ɃZ�b�V������j�����������[�U��(�X�L�[�}��)���w�肵�Ă��������B
exit /B

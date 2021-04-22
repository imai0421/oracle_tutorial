echo on
SQLPLUS -s SYS/password@XE AS SYSDBA @killuser.sql %1
exit;
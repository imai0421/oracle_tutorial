DECLARE
BEGIN
	FOR vRec IN (
		SELECT sid SID, serial# SERIAL FROM v$session where schemaname = '&1' and status <> 'KILLED'
	) LOOP
		EXECUTE IMMEDIATE 'ALTER SYSTEM KILL SESSION ''' || vRec.SID || ',' || vRec.SERIAL || '''';
	END LOOP;
END;
/

EXIT;
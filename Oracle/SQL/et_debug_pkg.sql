CREATE OR REPLACE PACKAGE et_debug_pkg
IS
	PROCEDURE debug
	(
		IN_seq_no	IN	NUMBER,
		IN_pkg		IN	VARCHAR2,
		IN_proc		IN	VARCHAR2,
		IN_text		IN	VARCHAR2
	);
	
END et_debug_pkg;
/
CREATE OR REPLACE PACKAGE BODY et_debug_pkg
IS
	PROCEDURE debug
	(
		IN_seq_no	IN	NUMBER,
		IN_pkg		IN	VARCHAR2,
		IN_proc		IN	VARCHAR2,
		IN_text		IN	VARCHAR2
	)
	AS
		PRAGMA AUTONOMOUS_TRANSACTION;
	BEGIN
	
		INSERT INTO et_debug_log
		(
			seq_no,		
			package_name,
			proc_name,	
			text,		
			itime		
		) 
		VALUES
		(
			IN_seq_no,
			IN_pkg,
			IN_proc,
			IN_text,
			systimestamp
		);
		
		COMMIT;
	
		
	EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
		
	END debug;
	
END et_debug_pkg;
			
			
		


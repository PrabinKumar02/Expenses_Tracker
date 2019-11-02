CREATE OR REPLACE PACKAGE et_fetch_master_data_pkg
IS
	PROCEDURE fetch_master_data_p
	(
		IN_person_id	IN	NUMBER,
		OUT_data		OUT	SYS_REFCURSOR
	);
	
END et_fetch_master_data_pkg;
/
CREATE OR REPLACE PACKAGE BODY et_fetch_master_data_pkg
IS
	PROCEDURE fetch_master_data_p
	(
		IN_person_id	IN	NUMBER,
		OUT_data		OUT	SYS_REFCURSOR
	)
	AS
	BEGIN
	
		OPEN OUT_data FOR
		SELECT * FROM et_master_data;
		
	EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
		
	END fetch_master_data_p;
	
END et_fetch_master_data_pkg;
			
			
		


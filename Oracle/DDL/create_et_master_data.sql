CREATE TABLE et_master_data
(
	person_id		NUMBER,
	et_type			VARCHAR2(50),
	et_sub_type		VARCHAR2(50),
	added_dt		DATE,
	value			NUMBER,
	updated_ts		DATE,
	notes			VARCHAR2(200)
);
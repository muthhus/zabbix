CREATE TABLE history_log_tmp (
	id		bigint DEFAULT '0'	NOT NULL,
	itemid		bigint DEFAULT '0'	NOT NULL,
	clock		integer		DEFAULT '0'	NOT NULL,
	timestamp	integer		DEFAULT '0'	NOT NULL,
	source		varchar(64)	DEFAULT ''	NOT NULL,
	severity	integer		DEFAULT '0'	NOT NULL,
	value		varchar(255)	DEFAULT ''	NOT NULL,
	PRIMARY KEY (id)
);
CREATE INDEX history_log_1 on history_log_tmp (itemid,clock);

insert into history_log_tmp select * from history_log;
drop table history_log;
alter table history_log_tmp rename to history_log;

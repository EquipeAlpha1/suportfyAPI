DROP TABLE IF EXISTS room;

CREATE TABLE room (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	computer_config TEXT NOT NULL DEFAULT 'EMPTY',
	computer_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY'	
);
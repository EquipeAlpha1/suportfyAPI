DROP TABLE IF EXISTS room;

CREATE TABLE room (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	slot_name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 0,
	monitor_status TEXT NOT NULL DEFAULT 0,
	computer_config TEXT NOT NULL DEFAULT 0,
	computer_status TEXT NOT NULL DEFAULT 0,
	keyboard_config TEXT NOT NULL DEFAULT 0,
	keyboard_status TEXT NOT NULL DEFAULT 0,
	mouse_config TEXT NOT NULL DEFAULT 0,
	mouse_status TEXT NOT NULL DEFAULT 0,
	os_config TEXT NOT NULL DEFAULT 0,
	os_status TEXT NOT NULL DEFAULT 0,
	network_config TEXT NOT NULL DEFAULT 0,
	network_status TEXT NOT NULL DEFAULT 0	
);
DROP TABLE IF EXISTS room;

CREATE TABLE room (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	slot_name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT '#',
	monitor_status TEXT NOT NULL DEFAULT '#',
	computer_config TEXT NOT NULL DEFAULT '#',
	computer_status TEXT NOT NULL DEFAULT '#',
	keyboard_config TEXT NOT NULL DEFAULT '#',
	keyboard_status TEXT NOT NULL DEFAULT '#',
	mouse_config TEXT NOT NULL DEFAULT '#',
	mouse_status TEXT NOT NULL DEFAULT '#',
	os_config TEXT NOT NULL DEFAULT '#',
	os_status TEXT NOT NULL DEFAULT '#',
	network_config TEXT NOT NULL DEFAULT '#',
	network_status TEXT NOT NULL DEFAULT '#'	
);
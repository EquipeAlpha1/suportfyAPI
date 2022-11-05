CREATE TABLE floors (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	floor TEXT NOT NULL UNIQUE
);

CREATE TABLE rooms (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	floor_id INTEGER REFERENCES floors (id),
	room INTEGER NOT NULL UNIQUE
);

CREATE TABLE room (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	slot TEXT NOT NULL UNIQUE,	
	monitor_config_id INTEGER REFERENCES monitors_config (id),
	monitor_status_id INTEGER REFERENCES monitorss_status (id),
	computer_config_id INTEGER REFERENCES computers_config (id),
	computer_status_id INTEGER REFERENCES computers_status (id),
	keyboard_config_id INTEGER REFERENCES keyboards_config (id),
	keyboard_status_id INTEGER REFERENCES keyboards_status (id),
	mouse_config_id INTEGER REFERENCES mice_config (id),
	mouse_status_id INTEGER REFERENCES mice_status (id)
);

CREATE TABLE monitors_config (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	model TEXT NOT NULL
);

CREATE TABLE computers_config (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	model TEXT NOT NULL
);

CREATE TABLE keyboards_config (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	model TEXT NOT NULL
);

CREATE TABLE mice_config (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	model TEXT NOT NULL
);

CREATE TABLE monitors_status (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	problem TEXT NOT NULL
);

CREATE TABLE computers_status (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	problem TEXT NOT NULL
);

CREATE TABLE keyboards_status (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	problem TEXT NOT NULL
);

CREATE TABLE mice_status (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	problem TEXT NOT NULL
);
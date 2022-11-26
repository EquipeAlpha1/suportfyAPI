DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS issue_history;
DROP TABLE IF EXISTS rooms;
DROP TABLE IF EXISTS room_301;
DROP TABLE IF EXISTS room_302;
DROP TABLE IF EXISTS room_303;
DROP TABLE IF EXISTS room_401;
DROP TABLE IF EXISTS room_402;
DROP TABLE IF EXISTS room_404;
DROP TABLE IF EXISTS room_405;
DROP TABLE IF EXISTS room_406;
DROP TABLE IF EXISTS room_407;
DROP TABLE IF EXISTS room_408;
DROP TABLE IF EXISTS room_409;
DROP TABLE IF EXISTS room_411;
DROP TABLE IF EXISTS room_412;
DROP TABLE IF EXISTS inventory;
DROP TRIGGER IF EXISTS verify_if_monitor_of_room_301_was_deleted;
DROP TRIGGER IF EXISTS verify_if_monitor_of_room_302_was_deleted;
DROP TRIGGER IF EXISTS verify_if_monitor_of_room_303_was_deleted;
DROP TRIGGER IF EXISTS verify_if_monitor_of_room_401_was_deleted;
DROP TRIGGER IF EXISTS verify_if_monitor_of_room_402_was_deleted;
DROP TRIGGER IF EXISTS verify_if_monitor_of_room_404_was_deleted;
DROP TRIGGER IF EXISTS verify_if_monitor_of_room_405_was_deleted;
DROP TRIGGER IF EXISTS verify_if_monitor_of_room_406_was_deleted;
DROP TRIGGER IF EXISTS verify_if_monitor_of_room_407_was_deleted;
DROP TRIGGER IF EXISTS verify_if_monitor_of_room_408_was_deleted;
DROP TRIGGER IF EXISTS verify_if_monitor_of_room_409_was_deleted;
DROP TRIGGER IF EXISTS verify_if_monitor_of_room_411_was_deleted;
DROP TRIGGER IF EXISTS verify_if_monitor_of_room_412_was_deleted;
DROP TRIGGER IF EXISTS verify_if_case_of_room_301_was_deleted;
DROP TRIGGER IF EXISTS verify_if_case_of_room_302_was_deleted;
DROP TRIGGER IF EXISTS verify_if_case_of_room_303_was_deleted;
DROP TRIGGER IF EXISTS verify_if_case_of_room_401_was_deleted;
DROP TRIGGER IF EXISTS verify_if_case_of_room_402_was_deleted;
DROP TRIGGER IF EXISTS verify_if_case_of_room_404_was_deleted;
DROP TRIGGER IF EXISTS verify_if_case_of_room_405_was_deleted;
DROP TRIGGER IF EXISTS verify_if_case_of_room_406_was_deleted;
DROP TRIGGER IF EXISTS verify_if_case_of_room_407_was_deleted;
DROP TRIGGER IF EXISTS verify_if_case_of_room_408_was_deleted;
DROP TRIGGER IF EXISTS verify_if_case_of_room_409_was_deleted;
DROP TRIGGER IF EXISTS verify_if_case_of_room_411_was_deleted;
DROP TRIGGER IF EXISTS verify_if_case_of_room_412_was_deleted;
DROP TRIGGER IF EXISTS verify_if_keyboard_of_room_301_was_deleted;
DROP TRIGGER IF EXISTS verify_if_keyboard_of_room_302_was_deleted;
DROP TRIGGER IF EXISTS verify_if_keyboard_of_room_303_was_deleted;
DROP TRIGGER IF EXISTS verify_if_keyboard_of_room_401_was_deleted;
DROP TRIGGER IF EXISTS verify_if_keyboard_of_room_402_was_deleted;
DROP TRIGGER IF EXISTS verify_if_keyboard_of_room_404_was_deleted;
DROP TRIGGER IF EXISTS verify_if_keyboard_of_room_405_was_deleted;
DROP TRIGGER IF EXISTS verify_if_keyboard_of_room_406_was_deleted;
DROP TRIGGER IF EXISTS verify_if_keyboard_of_room_407_was_deleted;
DROP TRIGGER IF EXISTS verify_if_keyboard_of_room_408_was_deleted;
DROP TRIGGER IF EXISTS verify_if_keyboard_of_room_409_was_deleted;
DROP TRIGGER IF EXISTS verify_if_keyboard_of_room_411_was_deleted;
DROP TRIGGER IF EXISTS verify_if_keyboard_of_room_412_was_deleted;
DROP TRIGGER IF EXISTS verify_if_mouse_of_room_301_was_deleted;
DROP TRIGGER IF EXISTS verify_if_mouse_of_room_302_was_deleted;
DROP TRIGGER IF EXISTS verify_if_mouse_of_room_303_was_deleted;
DROP TRIGGER IF EXISTS verify_if_mouse_of_room_401_was_deleted;
DROP TRIGGER IF EXISTS verify_if_mouse_of_room_402_was_deleted;
DROP TRIGGER IF EXISTS verify_if_mouse_of_room_404_was_deleted;
DROP TRIGGER IF EXISTS verify_if_mouse_of_room_405_was_deleted;
DROP TRIGGER IF EXISTS verify_if_mouse_of_room_406_was_deleted;
DROP TRIGGER IF EXISTS verify_if_mouse_of_room_407_was_deleted;
DROP TRIGGER IF EXISTS verify_if_mouse_of_room_408_was_deleted;
DROP TRIGGER IF EXISTS verify_if_mouse_of_room_409_was_deleted;
DROP TRIGGER IF EXISTS verify_if_mouse_of_room_411_was_deleted;
DROP TRIGGER IF EXISTS verify_if_mouse_of_room_412_was_deleted;
DROP TRIGGER IF EXISTS verify_if_os_of_room_301_was_deleted;
DROP TRIGGER IF EXISTS verify_if_os_of_room_302_was_deleted;
DROP TRIGGER IF EXISTS verify_if_os_of_room_303_was_deleted;
DROP TRIGGER IF EXISTS verify_if_os_of_room_401_was_deleted;
DROP TRIGGER IF EXISTS verify_if_os_of_room_402_was_deleted;
DROP TRIGGER IF EXISTS verify_if_os_of_room_404_was_deleted;
DROP TRIGGER IF EXISTS verify_if_os_of_room_405_was_deleted;
DROP TRIGGER IF EXISTS verify_if_os_of_room_406_was_deleted;
DROP TRIGGER IF EXISTS verify_if_os_of_room_407_was_deleted;
DROP TRIGGER IF EXISTS verify_if_os_of_room_408_was_deleted;
DROP TRIGGER IF EXISTS verify_if_os_of_room_409_was_deleted;
DROP TRIGGER IF EXISTS verify_if_os_of_room_411_was_deleted;
DROP TRIGGER IF EXISTS verify_if_os_of_room_412_was_deleted;
DROP TRIGGER IF EXISTS verify_if_network_of_room_301_was_deleted;
DROP TRIGGER IF EXISTS verify_if_network_of_room_302_was_deleted;
DROP TRIGGER IF EXISTS verify_if_network_of_room_303_was_deleted;
DROP TRIGGER IF EXISTS verify_if_network_of_room_401_was_deleted;
DROP TRIGGER IF EXISTS verify_if_network_of_room_402_was_deleted;
DROP TRIGGER IF EXISTS verify_if_network_of_room_404_was_deleted;
DROP TRIGGER IF EXISTS verify_if_network_of_room_405_was_deleted;
DROP TRIGGER IF EXISTS verify_if_network_of_room_406_was_deleted;
DROP TRIGGER IF EXISTS verify_if_network_of_room_407_was_deleted;
DROP TRIGGER IF EXISTS verify_if_network_of_room_408_was_deleted;
DROP TRIGGER IF EXISTS verify_if_network_of_room_409_was_deleted;
DROP TRIGGER IF EXISTS verify_if_network_of_room_411_was_deleted;
DROP TRIGGER IF EXISTS verify_if_network_of_room_412_was_deleted;
DROP TRIGGER IF EXISTS verify_if_motherboard_of_room_301_was_deleted;
DROP TRIGGER IF EXISTS verify_if_motherboard_of_room_302_was_deleted;
DROP TRIGGER IF EXISTS verify_if_motherboard_of_room_303_was_deleted;
DROP TRIGGER IF EXISTS verify_if_motherboard_of_room_401_was_deleted;
DROP TRIGGER IF EXISTS verify_if_motherboard_of_room_402_was_deleted;
DROP TRIGGER IF EXISTS verify_if_motherboard_of_room_404_was_deleted;
DROP TRIGGER IF EXISTS verify_if_motherboard_of_room_405_was_deleted;
DROP TRIGGER IF EXISTS verify_if_motherboard_of_room_406_was_deleted;
DROP TRIGGER IF EXISTS verify_if_motherboard_of_room_407_was_deleted;
DROP TRIGGER IF EXISTS verify_if_motherboard_of_room_408_was_deleted;
DROP TRIGGER IF EXISTS verify_if_motherboard_of_room_409_was_deleted;
DROP TRIGGER IF EXISTS verify_if_motherboard_of_room_411_was_deleted;
DROP TRIGGER IF EXISTS verify_if_motherboard_of_room_412_was_deleted;
DROP TRIGGER IF EXISTS verify_if_cpu_of_room_301_was_deleted;
DROP TRIGGER IF EXISTS verify_if_cpu_of_room_302_was_deleted;
DROP TRIGGER IF EXISTS verify_if_cpu_of_room_303_was_deleted;
DROP TRIGGER IF EXISTS verify_if_cpu_of_room_401_was_deleted;
DROP TRIGGER IF EXISTS verify_if_cpu_of_room_402_was_deleted;
DROP TRIGGER IF EXISTS verify_if_cpu_of_room_404_was_deleted;
DROP TRIGGER IF EXISTS verify_if_cpu_of_room_405_was_deleted;
DROP TRIGGER IF EXISTS verify_if_cpu_of_room_406_was_deleted;
DROP TRIGGER IF EXISTS verify_if_cpu_of_room_407_was_deleted;
DROP TRIGGER IF EXISTS verify_if_cpu_of_room_408_was_deleted;
DROP TRIGGER IF EXISTS verify_if_cpu_of_room_409_was_deleted;
DROP TRIGGER IF EXISTS verify_if_cpu_of_room_411_was_deleted;
DROP TRIGGER IF EXISTS verify_if_cpu_of_room_412_was_deleted;
DROP TRIGGER IF EXISTS verify_if_memory_of_room_301_was_deleted;
DROP TRIGGER IF EXISTS verify_if_memory_of_room_302_was_deleted;
DROP TRIGGER IF EXISTS verify_if_memory_of_room_303_was_deleted;
DROP TRIGGER IF EXISTS verify_if_memory_of_room_401_was_deleted;
DROP TRIGGER IF EXISTS verify_if_memory_of_room_402_was_deleted;
DROP TRIGGER IF EXISTS verify_if_memory_of_room_404_was_deleted;
DROP TRIGGER IF EXISTS verify_if_memory_of_room_405_was_deleted;
DROP TRIGGER IF EXISTS verify_if_memory_of_room_406_was_deleted;
DROP TRIGGER IF EXISTS verify_if_memory_of_room_407_was_deleted;
DROP TRIGGER IF EXISTS verify_if_memory_of_room_408_was_deleted;
DROP TRIGGER IF EXISTS verify_if_memory_of_room_409_was_deleted;
DROP TRIGGER IF EXISTS verify_if_memory_of_room_411_was_deleted;
DROP TRIGGER IF EXISTS verify_if_memory_of_room_412_was_deleted;
DROP TRIGGER IF EXISTS verify_if_storage_of_room_301_was_deleted;
DROP TRIGGER IF EXISTS verify_if_storage_of_room_302_was_deleted;
DROP TRIGGER IF EXISTS verify_if_storage_of_room_303_was_deleted;
DROP TRIGGER IF EXISTS verify_if_storage_of_room_401_was_deleted;
DROP TRIGGER IF EXISTS verify_if_storage_of_room_402_was_deleted;
DROP TRIGGER IF EXISTS verify_if_storage_of_room_404_was_deleted;
DROP TRIGGER IF EXISTS verify_if_storage_of_room_405_was_deleted;
DROP TRIGGER IF EXISTS verify_if_storage_of_room_406_was_deleted;
DROP TRIGGER IF EXISTS verify_if_storage_of_room_407_was_deleted;
DROP TRIGGER IF EXISTS verify_if_storage_of_room_408_was_deleted;
DROP TRIGGER IF EXISTS verify_if_storage_of_room_409_was_deleted;
DROP TRIGGER IF EXISTS verify_if_storage_of_room_411_was_deleted;
DROP TRIGGER IF EXISTS verify_if_storage_of_room_412_was_deleted;
DROP TRIGGER IF EXISTS verify_if_gpu_of_room_301_was_deleted;
DROP TRIGGER IF EXISTS verify_if_gpu_of_room_302_was_deleted;
DROP TRIGGER IF EXISTS verify_if_gpu_of_room_303_was_deleted;
DROP TRIGGER IF EXISTS verify_if_gpu_of_room_401_was_deleted;
DROP TRIGGER IF EXISTS verify_if_gpu_of_room_402_was_deleted;
DROP TRIGGER IF EXISTS verify_if_gpu_of_room_404_was_deleted;
DROP TRIGGER IF EXISTS verify_if_gpu_of_room_405_was_deleted;
DROP TRIGGER IF EXISTS verify_if_gpu_of_room_406_was_deleted;
DROP TRIGGER IF EXISTS verify_if_gpu_of_room_407_was_deleted;
DROP TRIGGER IF EXISTS verify_if_gpu_of_room_408_was_deleted;
DROP TRIGGER IF EXISTS verify_if_gpu_of_room_409_was_deleted;
DROP TRIGGER IF EXISTS verify_if_gpu_of_room_411_was_deleted;
DROP TRIGGER IF EXISTS verify_if_gpu_of_room_412_was_deleted;
DROP TRIGGER IF EXISTS verify_if_psu_of_room_301_was_deleted;
DROP TRIGGER IF EXISTS verify_if_psu_of_room_302_was_deleted;
DROP TRIGGER IF EXISTS verify_if_psu_of_room_303_was_deleted;
DROP TRIGGER IF EXISTS verify_if_psu_of_room_401_was_deleted;
DROP TRIGGER IF EXISTS verify_if_psu_of_room_402_was_deleted;
DROP TRIGGER IF EXISTS verify_if_psu_of_room_404_was_deleted;
DROP TRIGGER IF EXISTS verify_if_psu_of_room_405_was_deleted;
DROP TRIGGER IF EXISTS verify_if_psu_of_room_406_was_deleted;
DROP TRIGGER IF EXISTS verify_if_psu_of_room_407_was_deleted;
DROP TRIGGER IF EXISTS verify_if_psu_of_room_408_was_deleted;
DROP TRIGGER IF EXISTS verify_if_psu_of_room_409_was_deleted;
DROP TRIGGER IF EXISTS verify_if_psu_of_room_411_was_deleted;
DROP TRIGGER IF EXISTS verify_if_psu_of_room_412_was_deleted;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created DATE DEFAULT (datetime('now','localtime')),
    names TEXT NOT NULL,
    emails TEXT NOT NULL UNIQUE,
    passwords TEXT NOT NULL
);

CREATE TABLE issue_history (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created DATE DEFAULT (datetime('now','localtime')),
    names TEXT NOT NULL,
    mails TEXT NOT NULL,
    floors TEXT NOT NULL,
    rooms TEXT NOT NULL,
    pcs TEXT NOT NULL,
    subjects TEXT NOT NULL,
    descriptions TEXT NOT NULL
);

CREATE TABLE rooms (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created DATE DEFAULT (datetime('now','localtime')),
    floor TEXT NOT NULL,
    room TEXT NOT NULL UNIQUE
);

CREATE TABLE room_301 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_302 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_303 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_401 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_402 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_404 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_405 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_406 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_407 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_408 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_409 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_411 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_412 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE inventory (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	type TEXT NOT NULL DEFAULT 'EMPTY',
	brand TEXT NOT NULL DEFAULT 'EMPTY',
	model TEXT NOT NULL UNIQUE DEFAULT 'EMPTY',
	amount TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TRIGGER verify_if_monitor_of_room_301_was_deleted 
	AFTER UPDATE OF monitor_config ON room_301
	WHEN NEW.monitor_config == '#'
BEGIN
	UPDATE 
		room_301
	SET
		motherboard_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_monitor_of_room_302_was_deleted 
	AFTER UPDATE OF monitor_config ON room_302
	WHEN NEW.monitor_config == '#'
BEGIN
	UPDATE 
		room_302
	SET
		motherboard_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_monitor_of_room_303_was_deleted 
	AFTER UPDATE OF monitor_config ON room_303
	WHEN NEW.monitor_config == '#'
BEGIN
	UPDATE 
		room_303
	SET
		motherboard_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_monitor_of_room_401_was_deleted 
	AFTER UPDATE OF monitor_config ON room_401
	WHEN NEW.monitor_config == '#'
BEGIN
	UPDATE 
		room_401
	SET
		motherboard_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_monitor_of_room_402_was_deleted 
	AFTER UPDATE OF monitor_config ON room_402
	WHEN NEW.monitor_config == '#'
BEGIN
	UPDATE 
		room_402
	SET
		motherboard_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_monitor_of_room_404_was_deleted 
	AFTER UPDATE OF monitor_config ON room_404
	WHEN NEW.monitor_config == '#'
BEGIN
	UPDATE 
		room_404
	SET
		motherboard_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_monitor_of_room_405_was_deleted 
	AFTER UPDATE OF monitor_config ON room_405
	WHEN NEW.monitor_config == '#'
BEGIN
	UPDATE 
		room_405
	SET
		motherboard_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_monitor_of_room_406_was_deleted 
	AFTER UPDATE OF monitor_config ON room_406
	WHEN NEW.monitor_config == '#'
BEGIN
	UPDATE 
		room_406
	SET
		motherboard_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_monitor_of_room_407_was_deleted 
	AFTER UPDATE OF monitor_config ON room_407
	WHEN NEW.monitor_config == '#'
BEGIN
	UPDATE 
		room_407
	SET
		motherboard_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_monitor_of_room_408_was_deleted 
	AFTER UPDATE OF monitor_config ON room_408
	WHEN NEW.monitor_config == '#'
BEGIN
	UPDATE 
		room_408
	SET
		motherboard_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_monitor_of_room_409_was_deleted 
	AFTER UPDATE OF monitor_config ON room_409
	WHEN NEW.monitor_config == '#'
BEGIN
	UPDATE 
		room_409
	SET
		motherboard_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_monitor_of_room_411_was_deleted 
	AFTER UPDATE OF monitor_config ON room_411
	WHEN NEW.monitor_config == '#'
BEGIN
	UPDATE 
		room_411
	SET
		motherboard_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_monitor_of_room_412_was_deleted 
	AFTER UPDATE OF monitor_config ON room_412
	WHEN NEW.monitor_config == '#'
BEGIN
	UPDATE 
		room_412
	SET
		motherboard_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_case_of_room_301_was_deleted 
	AFTER UPDATE OF case_config ON room_301
	WHEN NEW.case_config == '#'
BEGIN
	UPDATE 
		room_301
	SET
		case_status = '#',
        os_config = '#',
        os_status = '#',
        ip_config = '#',
        ip_status = '#',
        mac_config = '#',
        mac_status = '#',
        motherboard_config = '#',
        motherboard_status = '#',
        cpu_config = '#',
        cpu_status = '#',
        memory_config = '#',
        memory_status = '#',
        storage_config = '#',
        storage_status = '#',
        gpu_config = '#',
        gpu_status = '#',
        psu_config = '#',
        psu_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_case_of_room_302_was_deleted 
	AFTER UPDATE OF case_config ON room_302
	WHEN NEW.case_config == '#'
BEGIN
	UPDATE 
		room_302
	SET
		case_status = '#',
        os_config = '#',
        os_status = '#', 
        ip_config = '#',
        ip_status = '#',
        mac_config = '#',
        mac_status = '#',
        motherboard_config = '#',
        motherboard_status = '#',
        cpu_config = '#',
        cpu_status = '#',
        memory_config = '#',
        memory_status = '#',
        storage_config = '#',
        storage_status = '#',
        gpu_config = '#',
        gpu_status = '#',
        psu_config = '#',
        psu_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_case_of_room_303_was_deleted 
	AFTER UPDATE OF case_config ON room_303
	WHEN NEW.case_config == '#'
BEGIN
	UPDATE 
		room_303
	SET
		case_status = '#',
        os_config = '#',
        os_status = '#', 
        ip_config = '#',
        ip_status = '#',
        mac_config = '#',
        mac_status = '#',
        motherboard_config = '#',
        motherboard_status = '#',
        cpu_config = '#',
        cpu_status = '#',
        memory_config = '#',
        memory_status = '#',
        storage_config = '#',
        storage_status = '#',
        gpu_config = '#',
        gpu_status = '#',
        psu_config = '#',
        psu_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_case_of_room_401_was_deleted 
	AFTER UPDATE OF case_config ON room_401
	WHEN NEW.case_config == '#'
BEGIN
	UPDATE 
		room_401
	SET
		case_status = '#',
        os_config = '#',
        os_status = '#', 
        ip_config = '#',
        ip_status = '#',
        mac_config = '#',
        mac_status = '#',
        motherboard_config = '#',
        motherboard_status = '#',
        cpu_config = '#',
        cpu_status = '#',
        memory_config = '#',
        memory_status = '#',
        storage_config = '#',
        storage_status = '#',
        gpu_config = '#',
        gpu_status = '#',
        psu_config = '#',
        psu_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_case_of_room_402_was_deleted 
	AFTER UPDATE OF case_config ON room_402
	WHEN NEW.case_config == '#'
BEGIN
	UPDATE 
		room_402
	SET
		case_status = '#',
        os_config = '#',
        os_status = '#', 
        ip_config = '#',
        ip_status = '#',
        mac_config = '#',
        mac_status = '#',
        motherboard_config = '#',
        motherboard_status = '#',
        cpu_config = '#',
        cpu_status = '#',
        memory_config = '#',
        memory_status = '#',
        storage_config = '#',
        storage_status = '#',
        gpu_config = '#',
        gpu_status = '#',
        psu_config = '#',
        psu_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_case_of_room_404_was_deleted 
	AFTER UPDATE OF case_config ON room_404
	WHEN NEW.case_config == '#'
BEGIN
	UPDATE 
		room_404
	SET
		case_status = '#',
        os_config = '#',
        os_status = '#', 
        ip_config = '#',
        ip_status = '#',
        mac_config = '#',
        mac_status = '#',
        motherboard_config = '#',
        motherboard_status = '#',
        cpu_config = '#',
        cpu_status = '#',
        memory_config = '#',
        memory_status = '#',
        storage_config = '#',
        storage_status = '#',
        gpu_config = '#',
        gpu_status = '#',
        psu_config = '#',
        psu_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_case_of_room_405_was_deleted 
	AFTER UPDATE OF case_config ON room_405
	WHEN NEW.case_config == '#'
BEGIN
	UPDATE 
		room_405
	SET
		case_status = '#',
        os_config = '#',
        os_status = '#', 
        ip_config = '#',
        ip_status = '#',
        mac_config = '#',
        mac_status = '#',
        motherboard_config = '#',
        motherboard_status = '#',
        cpu_config = '#',
        cpu_status = '#',
        memory_config = '#',
        memory_status = '#',
        storage_config = '#',
        storage_status = '#',
        gpu_config = '#',
        gpu_status = '#',
        psu_config = '#',
        psu_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_case_of_room_406_was_deleted 
	AFTER UPDATE OF case_config ON room_406
	WHEN NEW.case_config == '#'
BEGIN
	UPDATE 
		room_406
	SET
		case_status = '#',
        os_config = '#',
        os_status = '#', 
        ip_config = '#',
        ip_status = '#',
        mac_config = '#',
        mac_status = '#',
        motherboard_config = '#',
        motherboard_status = '#',
        cpu_config = '#',
        cpu_status = '#',
        memory_config = '#',
        memory_status = '#',
        storage_config = '#',
        storage_status = '#',
        gpu_config = '#',
        gpu_status = '#',
        psu_config = '#',
        psu_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_case_of_room_407_was_deleted 
	AFTER UPDATE OF case_config ON room_407
	WHEN NEW.case_config == '#'
BEGIN
	UPDATE 
		room_407
	SET
		case_status = '#',
        os_config = '#',
        os_status = '#', 
        ip_config = '#',
        ip_status = '#',
        mac_config = '#',
        mac_status = '#',
        motherboard_config = '#',
        motherboard_status = '#',
        cpu_config = '#',
        cpu_status = '#',
        memory_config = '#',
        memory_status = '#',
        storage_config = '#',
        storage_status = '#',
        gpu_config = '#',
        gpu_status = '#',
        psu_config = '#',
        psu_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_case_of_room_408_was_deleted 
	AFTER UPDATE OF case_config ON room_408
	WHEN NEW.case_config == '#'
BEGIN
	UPDATE 
		room_408
	SET
		case_status = '#',
        os_config = '#',
        os_status = '#', 
        ip_config = '#',
        ip_status = '#',
        mac_config = '#',
        mac_status = '#',
        motherboard_config = '#',
        motherboard_status = '#',
        cpu_config = '#',
        cpu_status = '#',
        memory_config = '#',
        memory_status = '#',
        storage_config = '#',
        storage_status = '#',
        gpu_config = '#',
        gpu_status = '#',
        psu_config = '#',
        psu_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_case_of_room_409_was_deleted 
	AFTER UPDATE OF case_config ON room_409
	WHEN NEW.case_config == '#'
BEGIN
	UPDATE 
		room_409
	SET
		case_status = '#',
        os_config = '#',
        os_status = '#', 
        ip_config = '#',
        ip_status = '#',
        mac_config = '#',
        mac_status = '#',
        motherboard_config = '#',
        motherboard_status = '#',
        cpu_config = '#',
        cpu_status = '#',
        memory_config = '#',
        memory_status = '#',
        storage_config = '#',
        storage_status = '#',
        gpu_config = '#',
        gpu_status = '#',
        psu_config = '#',
        psu_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_case_of_room_411_was_deleted 
	AFTER UPDATE OF case_config ON room_411
	WHEN NEW.case_config == '#'
BEGIN
	UPDATE 
		room_411
	SET
		case_status = '#',
        os_config = '#',
        os_status = '#', 
        ip_config = '#',
        ip_status = '#',
        mac_config = '#',
        mac_status = '#',
        motherboard_config = '#',
        motherboard_status = '#',
        cpu_config = '#',
        cpu_status = '#',
        memory_config = '#',
        memory_status = '#',
        storage_config = '#',
        storage_status = '#',
        gpu_config = '#',
        gpu_status = '#',
        psu_config = '#',
        psu_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_case_of_room_412_was_deleted 
	AFTER UPDATE OF case_config ON room_412
	WHEN NEW.case_config == '#'
BEGIN
	UPDATE 
		room_412
	SET
		case_status = '#',
        os_config = '#',
        os_status = '#', 
        ip_config = '#',
        ip_status = '#',
        mac_config = '#',
        mac_status = '#',
        motherboard_config = '#',
        motherboard_status = '#',
        cpu_config = '#',
        cpu_status = '#',
        memory_config = '#',
        memory_status = '#',
        storage_config = '#',
        storage_status = '#',
        gpu_config = '#',
        gpu_status = '#',
        psu_config = '#',
        psu_status = '#', 
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_keyboard_of_room_301_was_deleted 
	AFTER UPDATE OF keyboard_config ON room_301
	WHEN NEW.keyboard_config == '#'
BEGIN
	UPDATE 
		room_301
	SET
		keyboard_status = '#',        
		general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_keyboard_of_room_302_was_deleted 
	AFTER UPDATE OF keyboard_config ON room_302
	WHEN NEW.keyboard_config == '#'
BEGIN
	UPDATE 
		room_302
	SET
		keyboard_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_keyboard_of_room_303_was_deleted 
	AFTER UPDATE OF keyboard_config ON room_303
	WHEN NEW.keyboard_config == '#'
BEGIN
	UPDATE 
		room_303
	SET
		keyboard_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_keyboard_of_room_401_was_deleted 
	AFTER UPDATE OF keyboard_config ON room_401
	WHEN NEW.keyboard_config == '#'
BEGIN
	UPDATE 
		room_401
	SET
		keyboard_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_keyboard_of_room_402_was_deleted 
	AFTER UPDATE OF keyboard_config ON room_402
	WHEN NEW.keyboard_config == '#'
BEGIN
	UPDATE 
		room_402
	SET
		keyboard_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_keyboard_of_room_404_was_deleted 
	AFTER UPDATE OF keyboard_config ON room_404
	WHEN NEW.keyboard_config == '#'
BEGIN
	UPDATE 
		room_404
	SET
		keyboard_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_keyboard_of_room_405_was_deleted 
	AFTER UPDATE OF keyboard_config ON room_405
	WHEN NEW.keyboard_config == '#'
BEGIN
	UPDATE 
		room_405
	SET
		keyboard_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_keyboard_of_room_406_was_deleted 
	AFTER UPDATE OF keyboard_config ON room_406
	WHEN NEW.keyboard_config == '#'
BEGIN
	UPDATE 
		room_406
	SET
		keyboard_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_keyboard_of_room_407_was_deleted 
	AFTER UPDATE OF keyboard_config ON room_407
	WHEN NEW.keyboard_config == '#'
BEGIN
	UPDATE 
		room_407
	SET
		keyboard_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_keyboard_of_room_408_was_deleted 
	AFTER UPDATE OF keyboard_config ON room_408
	WHEN NEW.keyboard_config == '#'
BEGIN
	UPDATE 
		room_408
	SET
		keyboard_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_keyboard_of_room_409_was_deleted 
	AFTER UPDATE OF keyboard_config ON room_409
	WHEN NEW.keyboard_config == '#'
BEGIN
	UPDATE 
		room_409
	SET
		keyboard_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_keyboard_of_room_411_was_deleted 
	AFTER UPDATE OF keyboard_config ON room_411
	WHEN NEW.keyboard_config == '#'
BEGIN
	UPDATE 
		room_411
	SET
		keyboard_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_keyboard_of_room_412_was_deleted 
	AFTER UPDATE OF keyboard_config ON room_412
	WHEN NEW.keyboard_config == '#'
BEGIN
	UPDATE 
		room_412
	SET
		keyboard_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_mouse_of_room_301_was_deleted 
	AFTER UPDATE OF mouse_config ON room_301
	WHEN NEW.mouse_config == '#'
BEGIN
	UPDATE 
		room_301
	SET
		mouse_status = '#',        
		general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_mouse_of_room_302_was_deleted 
	AFTER UPDATE OF mouse_config ON room_302
	WHEN NEW.mouse_config == '#'
BEGIN
	UPDATE 
		room_302
	SET
		mouse_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_mouse_of_room_303_was_deleted 
	AFTER UPDATE OF mouse_config ON room_303
	WHEN NEW.mouse_config == '#'
BEGIN
	UPDATE 
		room_303
	SET
		mouse_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_mouse_of_room_401_was_deleted 
	AFTER UPDATE OF mouse_config ON room_401
	WHEN NEW.mouse_config == '#'
BEGIN
	UPDATE 
		room_401
	SET
		mouse_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_mouse_of_room_402_was_deleted 
	AFTER UPDATE OF mouse_config ON room_402
	WHEN NEW.mouse_config == '#'
BEGIN
	UPDATE 
		room_402
	SET
		mouse_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_mouse_of_room_404_was_deleted 
	AFTER UPDATE OF mouse_config ON room_404
	WHEN NEW.mouse_config == '#'
BEGIN
	UPDATE 
		room_404
	SET
		mouse_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_mouse_of_room_405_was_deleted 
	AFTER UPDATE OF mouse_config ON room_405
	WHEN NEW.mouse_config == '#'
BEGIN
	UPDATE 
		room_405
	SET
		mouse_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_mouse_of_room_406_was_deleted 
	AFTER UPDATE OF mouse_config ON room_406
	WHEN NEW.mouse_config == '#'
BEGIN
	UPDATE 
		room_406
	SET
		mouse_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_mouse_of_room_407_was_deleted 
	AFTER UPDATE OF mouse_config ON room_407
	WHEN NEW.mouse_config == '#'
BEGIN
	UPDATE 
		room_407
	SET
		mouse_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_mouse_of_room_408_was_deleted 
	AFTER UPDATE OF mouse_config ON room_408
	WHEN NEW.mouse_config == '#'
BEGIN
	UPDATE 
		room_408
	SET
		mouse_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_mouse_of_room_409_was_deleted 
	AFTER UPDATE OF mouse_config ON room_409
	WHEN NEW.mouse_config == '#'
BEGIN
	UPDATE 
		room_409
	SET
		mouse_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_mouse_of_room_411_was_deleted 
	AFTER UPDATE OF mouse_config ON room_411
	WHEN NEW.mouse_config == '#'
BEGIN
	UPDATE 
		room_411
	SET
		mouse_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_mouse_of_room_412_was_deleted 
	AFTER UPDATE OF mouse_config ON room_412
	WHEN NEW.mouse_config == '#'
BEGIN
	UPDATE 
		room_412
	SET
		mouse_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_os_of_room_301_was_deleted 
	AFTER UPDATE OF os_config ON room_301
	WHEN NEW.os_config == '#'
BEGIN
	UPDATE 
		room_301
	SET
		os_status = '#',        
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_os_of_room_302_was_deleted 
	AFTER UPDATE OF os_config ON room_302
	WHEN NEW.os_config == '#'
BEGIN
	UPDATE 
		room_302
	SET
		os_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_os_of_room_303_was_deleted 
	AFTER UPDATE OF os_config ON room_303
	WHEN NEW.os_config == '#'
BEGIN
	UPDATE 
		room_303
	SET
		os_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_os_of_room_401_was_deleted 
	AFTER UPDATE OF os_config ON room_401
	WHEN NEW.os_config == '#'
BEGIN
	UPDATE 
		room_401
	SET
		os_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_os_of_room_402_was_deleted 
	AFTER UPDATE OF os_config ON room_402
	WHEN NEW.os_config == '#'
BEGIN
	UPDATE 
		room_402
	SET
		os_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_os_of_room_404_was_deleted 
	AFTER UPDATE OF os_config ON room_404
	WHEN NEW.os_config == '#'
BEGIN
	UPDATE 
		room_404
	SET
		os_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_os_of_room_405_was_deleted 
	AFTER UPDATE OF os_config ON room_405
	WHEN NEW.os_config == '#'
BEGIN
	UPDATE 
		room_405
	SET
		os_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_os_of_room_406_was_deleted 
	AFTER UPDATE OF os_config ON room_406
	WHEN NEW.os_config == '#'
BEGIN
	UPDATE 
		room_406
	SET
		os_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_os_of_room_407_was_deleted 
	AFTER UPDATE OF os_config ON room_407
	WHEN NEW.os_config == '#'
BEGIN
	UPDATE 
		room_407
	SET
		os_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_os_of_room_408_was_deleted 
	AFTER UPDATE OF os_config ON room_408
	WHEN NEW.os_config == '#'
BEGIN
	UPDATE 
		room_408
	SET
		os_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_os_of_room_409_was_deleted 
	AFTER UPDATE OF os_config ON room_409
	WHEN NEW.os_config == '#'
BEGIN
	UPDATE 
		room_409
	SET
		os_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_os_of_room_411_was_deleted 
	AFTER UPDATE OF os_config ON room_411
	WHEN NEW.os_config == '#'
BEGIN
	UPDATE 
		room_411
	SET
		os_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_os_of_room_412_was_deleted 
	AFTER UPDATE OF os_config ON room_412
	WHEN NEW.os_config == '#'
BEGIN
	UPDATE 
		room_412
	SET
		os_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_network_of_room_301_was_deleted 
	AFTER UPDATE OF network_config ON room_301
	WHEN NEW.network_config == '#'
BEGIN
	UPDATE 
		room_301
	SET
		network_status = '#',
        ip_config = '#',
        ip_status = '#',        
		general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_network_of_room_302_was_deleted 
	AFTER UPDATE OF network_config ON room_302
	WHEN NEW.network_config == '#'
BEGIN
	UPDATE 
		room_302
	SET
		network_status = '#',
        ip_config = '#',
        ip_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_network_of_room_303_was_deleted 
	AFTER UPDATE OF network_config ON room_303
	WHEN NEW.network_config == '#'
BEGIN
	UPDATE 
		room_303
	SET
		network_status = '#',
        ip_config = '#',
        ip_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_network_of_room_401_was_deleted 
	AFTER UPDATE OF network_config ON room_401
	WHEN NEW.network_config == '#'
BEGIN
	UPDATE 
		room_401
	SET
		network_status = '#',
        ip_config = '#',
        ip_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_network_of_room_402_was_deleted 
	AFTER UPDATE OF network_config ON room_402
	WHEN NEW.network_config == '#'
BEGIN
	UPDATE 
		room_402
	SET
		network_status = '#',
        ip_config = '#',
        ip_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_network_of_room_404_was_deleted 
	AFTER UPDATE OF network_config ON room_404
	WHEN NEW.network_config == '#'
BEGIN
	UPDATE 
		room_404
	SET
		network_status = '#',
        ip_config = '#',
        ip_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_network_of_room_405_was_deleted 
	AFTER UPDATE OF network_config ON room_405
	WHEN NEW.network_config == '#'
BEGIN
	UPDATE 
		room_405
	SET
		network_status = '#',
        ip_config = '#',
        ip_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_network_of_room_406_was_deleted 
	AFTER UPDATE OF network_config ON room_406
	WHEN NEW.network_config == '#'
BEGIN
	UPDATE 
		room_406
	SET
		network_status = '#',
        ip_config = '#',
        ip_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_network_of_room_407_was_deleted 
	AFTER UPDATE OF network_config ON room_407
	WHEN NEW.network_config == '#'
BEGIN
	UPDATE 
		room_407
	SET
		network_status = '#',
        ip_config = '#',
        ip_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_network_of_room_408_was_deleted 
	AFTER UPDATE OF network_config ON room_408
	WHEN NEW.network_config == '#'
BEGIN
	UPDATE 
		room_408
	SET
		network_status = '#',
        ip_config = '#',
        ip_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_network_of_room_409_was_deleted 
	AFTER UPDATE OF network_config ON room_409
	WHEN NEW.network_config == '#'
BEGIN
	UPDATE 
		room_409
	SET
		network_status = '#',
        ip_config = '#',
        ip_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_network_of_room_411_was_deleted 
	AFTER UPDATE OF network_config ON room_411
	WHEN NEW.network_config == '#'
BEGIN
	UPDATE 
		room_411
	SET
		network_status = '#',
        ip_config = '#',
        ip_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_network_of_room_412_was_deleted 
	AFTER UPDATE OF network_config ON room_412
	WHEN NEW.network_config == '#'
BEGIN
	UPDATE 
		room_412
	SET
		network_status = '#',
        ip_config = '#',
        ip_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_motherboard_of_room_301_was_deleted 
	AFTER UPDATE OF motherboard_config ON room_301
	WHEN NEW.motherboard_config == '#'
BEGIN
	UPDATE 
		room_301
	SET
		motherboard_status = '#', 
		cpu_config  = '#',
		cpu_status = '#',
		memory_config = '#',
		memory_status = '#',
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_motherboard_of_room_302_was_deleted 
	AFTER UPDATE OF motherboard_config ON room_302
	WHEN NEW.motherboard_config == '#'
BEGIN
	UPDATE 
		room_302
	SET
		motherboard_status = '#', 
		cpu_config  = '#',
		cpu_status = '#',
		memory_config = '#',
		memory_status = '#',
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_motherboard_of_room_303_was_deleted 
	AFTER UPDATE OF motherboard_config ON room_303
	WHEN NEW.motherboard_config == '#'
BEGIN
	UPDATE 
		room_303
	SET
		motherboard_status = '#', 
		cpu_config  = '#',
		cpu_status = '#',
		memory_config = '#',
		memory_status = '#',
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_motherboard_of_room_401_was_deleted 
	AFTER UPDATE OF motherboard_config ON room_401
	WHEN NEW.motherboard_config == '#'
BEGIN
	UPDATE 
		room_401
	SET
		motherboard_status = '#', 
		cpu_config  = '#',
		cpu_status = '#',
		memory_config = '#',
		memory_status = '#',
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_motherboard_of_room_402_was_deleted 
	AFTER UPDATE OF motherboard_config ON room_402
	WHEN NEW.motherboard_config == '#'
BEGIN
	UPDATE 
		room_402
	SET
		motherboard_status = '#', 
		cpu_config  = '#',
		cpu_status = '#',
		memory_config = '#',
		memory_status = '#',
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_motherboard_of_room_404_was_deleted 
	AFTER UPDATE OF motherboard_config ON room_404
	WHEN NEW.motherboard_config == '#'
BEGIN
	UPDATE 
		room_404
	SET
		motherboard_status = '#', 
		cpu_config  = '#',
		cpu_status = '#',
		memory_config = '#',
		memory_status = '#',
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_motherboard_of_room_405_was_deleted 
	AFTER UPDATE OF motherboard_config ON room_405
	WHEN NEW.motherboard_config == '#'
BEGIN
	UPDATE 
		room_405
	SET
		motherboard_status = '#', 
		cpu_config  = '#',
		cpu_status = '#',
		memory_config = '#',
		memory_status = '#',
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_motherboard_of_room_406_was_deleted 
	AFTER UPDATE OF motherboard_config ON room_406
	WHEN NEW.motherboard_config == '#'
BEGIN
	UPDATE 
		room_406
	SET
		motherboard_status = '#', 
		cpu_config  = '#',
		cpu_status = '#',
		memory_config = '#',
		memory_status = '#',
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_motherboard_of_room_407_was_deleted 
	AFTER UPDATE OF motherboard_config ON room_407
	WHEN NEW.motherboard_config == '#'
BEGIN
	UPDATE 
		room_407
	SET
		motherboard_status = '#', 
		cpu_config  = '#',
		cpu_status = '#',
		memory_config = '#',
		memory_status = '#',
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_motherboard_of_room_408_was_deleted 
	AFTER UPDATE OF motherboard_config ON room_408
	WHEN NEW.motherboard_config == '#'
BEGIN
	UPDATE 
		room_408
	SET
		motherboard_status = '#', 
		cpu_config  = '#',
		cpu_status = '#',
		memory_config = '#',
		memory_status = '#',
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_motherboard_of_room_409_was_deleted 
	AFTER UPDATE OF motherboard_config ON room_409
	WHEN NEW.motherboard_config == '#'
BEGIN
	UPDATE 
		room_409
	SET
		motherboard_status = '#', 
		cpu_config  = '#',
		cpu_status = '#',
		memory_config = '#',
		memory_status = '#',
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_motherboard_of_room_411_was_deleted 
	AFTER UPDATE OF motherboard_config ON room_411
	WHEN NEW.motherboard_config == '#'
BEGIN
	UPDATE 
		room_411
	SET
		motherboard_status = '#', 
		cpu_config  = '#',
		cpu_status = '#',
		memory_config = '#',
		memory_status = '#',
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_motherboard_of_room_412_was_deleted 
	AFTER UPDATE OF motherboard_config ON room_412
	WHEN NEW.motherboard_config == '#'
BEGIN
	UPDATE 
		room_412
	SET
		motherboard_status = '#', 
		cpu_config  = '#',
		cpu_status = '#',
		memory_config = '#',
		memory_status = '#',
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_cpu_of_room_301_was_deleted 
	AFTER UPDATE OF cpu_config ON room_301
	WHEN NEW.cpu_config == '#'
BEGIN
	UPDATE 
		room_301
	SET
		cpu_status = '#',        
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_cpu_of_room_302_was_deleted 
	AFTER UPDATE OF cpu_config ON room_302
	WHEN NEW.cpu_config == '#'
BEGIN
	UPDATE 
		room_302
	SET
		cpu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_cpu_of_room_303_was_deleted 
	AFTER UPDATE OF cpu_config ON room_303
	WHEN NEW.cpu_config == '#'
BEGIN
	UPDATE 
		room_303
	SET
		cpu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_cpu_of_room_401_was_deleted 
	AFTER UPDATE OF cpu_config ON room_401
	WHEN NEW.cpu_config == '#'
BEGIN
	UPDATE 
		room_401
	SET
		cpu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_cpu_of_room_402_was_deleted 
	AFTER UPDATE OF cpu_config ON room_402
	WHEN NEW.cpu_config == '#'
BEGIN
	UPDATE 
		room_402
	SET
		cpu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_cpu_of_room_404_was_deleted 
	AFTER UPDATE OF cpu_config ON room_404
	WHEN NEW.cpu_config == '#'
BEGIN
	UPDATE 
		room_404
	SET
		cpu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_cpu_of_room_405_was_deleted 
	AFTER UPDATE OF cpu_config ON room_405
	WHEN NEW.cpu_config == '#'
BEGIN
	UPDATE 
		room_405
	SET
		cpu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_cpu_of_room_406_was_deleted 
	AFTER UPDATE OF cpu_config ON room_406
	WHEN NEW.cpu_config == '#'
BEGIN
	UPDATE 
		room_406
	SET
		cpu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_cpu_of_room_407_was_deleted 
	AFTER UPDATE OF cpu_config ON room_407
	WHEN NEW.cpu_config == '#'
BEGIN
	UPDATE 
		room_407
	SET
		cpu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_cpu_of_room_408_was_deleted 
	AFTER UPDATE OF cpu_config ON room_408
	WHEN NEW.cpu_config == '#'
BEGIN
	UPDATE 
		room_408
	SET
		cpu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_cpu_of_room_409_was_deleted 
	AFTER UPDATE OF cpu_config ON room_409
	WHEN NEW.cpu_config == '#'
BEGIN
	UPDATE 
		room_409
	SET
		cpu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_cpu_of_room_411_was_deleted 
	AFTER UPDATE OF cpu_config ON room_411
	WHEN NEW.cpu_config == '#'
BEGIN
	UPDATE 
		room_411
	SET
		cpu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_cpu_of_room_412_was_deleted 
	AFTER UPDATE OF cpu_config ON room_412
	WHEN NEW.cpu_config == '#'
BEGIN
	UPDATE 
		room_412
	SET
		cpu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_memory_of_room_301_was_deleted 
	AFTER UPDATE OF memory_config ON room_301
	WHEN NEW.memory_config == '#'
BEGIN
	UPDATE 
		room_301
	SET
		memory_status = '#',        
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_memory_of_room_302_was_deleted 
	AFTER UPDATE OF memory_config ON room_302
	WHEN NEW.memory_config == '#'
BEGIN
	UPDATE 
		room_302
	SET
		memory_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_memory_of_room_303_was_deleted 
	AFTER UPDATE OF memory_config ON room_303
	WHEN NEW.memory_config == '#'
BEGIN
	UPDATE 
		room_303
	SET
		memory_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_memory_of_room_401_was_deleted 
	AFTER UPDATE OF memory_config ON room_401
	WHEN NEW.memory_config == '#'
BEGIN
	UPDATE 
		room_401
	SET
		memory_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_memory_of_room_402_was_deleted 
	AFTER UPDATE OF memory_config ON room_402
	WHEN NEW.memory_config == '#'
BEGIN
	UPDATE 
		room_402
	SET
		memory_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_memory_of_room_404_was_deleted 
	AFTER UPDATE OF memory_config ON room_404
	WHEN NEW.memory_config == '#'
BEGIN
	UPDATE 
		room_404
	SET
		memory_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_memory_of_room_405_was_deleted 
	AFTER UPDATE OF memory_config ON room_405
	WHEN NEW.memory_config == '#'
BEGIN
	UPDATE 
		room_405
	SET
		memory_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_memory_of_room_406_was_deleted 
	AFTER UPDATE OF memory_config ON room_406
	WHEN NEW.memory_config == '#'
BEGIN
	UPDATE 
		room_406
	SET
		memory_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_memory_of_room_407_was_deleted 
	AFTER UPDATE OF memory_config ON room_407
	WHEN NEW.memory_config == '#'
BEGIN
	UPDATE 
		room_407
	SET
		memory_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_memory_of_room_408_was_deleted 
	AFTER UPDATE OF memory_config ON room_408
	WHEN NEW.memory_config == '#'
BEGIN
	UPDATE 
		room_408
	SET
		memory_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_memory_of_room_409_was_deleted 
	AFTER UPDATE OF memory_config ON room_409
	WHEN NEW.memory_config == '#'
BEGIN
	UPDATE 
		room_409
	SET
		memory_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_memory_of_room_411_was_deleted 
	AFTER UPDATE OF memory_config ON room_411
	WHEN NEW.memory_config == '#'
BEGIN
	UPDATE 
		room_411
	SET
		memory_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_memory_of_room_412_was_deleted 
	AFTER UPDATE OF memory_config ON room_412
	WHEN NEW.memory_config == '#'
BEGIN
	UPDATE 
		room_412
	SET
		memory_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_storage_of_room_301_was_deleted 
	AFTER UPDATE OF storage_config ON room_301
	WHEN NEW.storage_config == '#'
BEGIN
	UPDATE 
		room_301
	SET
		storage_status = '#',        
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_storage_of_room_302_was_deleted 
	AFTER UPDATE OF storage_config ON room_302
	WHEN NEW.storage_config == '#'
BEGIN
	UPDATE 
		room_302
	SET
		storage_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_storage_of_room_303_was_deleted 
	AFTER UPDATE OF storage_config ON room_303
	WHEN NEW.storage_config == '#'
BEGIN
	UPDATE 
		room_303
	SET
		storage_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_storage_of_room_401_was_deleted 
	AFTER UPDATE OF storage_config ON room_401
	WHEN NEW.storage_config == '#'
BEGIN
	UPDATE 
		room_401
	SET
		storage_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_storage_of_room_402_was_deleted 
	AFTER UPDATE OF storage_config ON room_402
	WHEN NEW.storage_config == '#'
BEGIN
	UPDATE 
		room_402
	SET
		storage_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_storage_of_room_404_was_deleted 
	AFTER UPDATE OF storage_config ON room_404
	WHEN NEW.storage_config == '#'
BEGIN
	UPDATE 
		room_404
	SET
		storage_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_storage_of_room_405_was_deleted 
	AFTER UPDATE OF storage_config ON room_405
	WHEN NEW.storage_config == '#'
BEGIN
	UPDATE 
		room_405
	SET
		storage_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_storage_of_room_406_was_deleted 
	AFTER UPDATE OF storage_config ON room_406
	WHEN NEW.storage_config == '#'
BEGIN
	UPDATE 
		room_406
	SET
		storage_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_storage_of_room_407_was_deleted 
	AFTER UPDATE OF storage_config ON room_407
	WHEN NEW.storage_config == '#'
BEGIN
	UPDATE 
		room_407
	SET
		storage_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_storage_of_room_408_was_deleted 
	AFTER UPDATE OF storage_config ON room_408
	WHEN NEW.storage_config == '#'
BEGIN
	UPDATE 
		room_408
	SET
		storage_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_storage_of_room_409_was_deleted 
	AFTER UPDATE OF storage_config ON room_409
	WHEN NEW.storage_config == '#'
BEGIN
	UPDATE 
		room_409
	SET
		storage_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_storage_of_room_411_was_deleted 
	AFTER UPDATE OF storage_config ON room_411
	WHEN NEW.storage_config == '#'
BEGIN
	UPDATE 
		room_411
	SET
		storage_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_storage_of_room_412_was_deleted 
	AFTER UPDATE OF storage_config ON room_412
	WHEN NEW.storage_config == '#'
BEGIN
	UPDATE 
		room_412
	SET
		storage_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_gpu_of_room_301_was_deleted 
	AFTER UPDATE OF gpu_config ON room_301
	WHEN NEW.gpu_config == '#'
BEGIN
	UPDATE 
		room_301
	SET
		gpu_status = '#',        
		general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_gpu_of_room_302_was_deleted 
	AFTER UPDATE OF gpu_config ON room_302
	WHEN NEW.gpu_config == '#'
BEGIN
	UPDATE 
		room_302
	SET
		gpu_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_gpu_of_room_303_was_deleted 
	AFTER UPDATE OF gpu_config ON room_303
	WHEN NEW.gpu_config == '#'
BEGIN
	UPDATE 
		room_303
	SET
		gpu_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_gpu_of_room_401_was_deleted 
	AFTER UPDATE OF gpu_config ON room_401
	WHEN NEW.gpu_config == '#'
BEGIN
	UPDATE 
		room_401
	SET
		gpu_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_gpu_of_room_402_was_deleted 
	AFTER UPDATE OF gpu_config ON room_402
	WHEN NEW.gpu_config == '#'
BEGIN
	UPDATE 
		room_402
	SET
		gpu_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_gpu_of_room_404_was_deleted 
	AFTER UPDATE OF gpu_config ON room_404
	WHEN NEW.gpu_config == '#'
BEGIN
	UPDATE 
		room_404
	SET
		gpu_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_gpu_of_room_405_was_deleted 
	AFTER UPDATE OF gpu_config ON room_405
	WHEN NEW.gpu_config == '#'
BEGIN
	UPDATE 
		room_405
	SET
		gpu_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_gpu_of_room_406_was_deleted 
	AFTER UPDATE OF gpu_config ON room_406
	WHEN NEW.gpu_config == '#'
BEGIN
	UPDATE 
		room_406
	SET
		gpu_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_gpu_of_room_407_was_deleted 
	AFTER UPDATE OF gpu_config ON room_407
	WHEN NEW.gpu_config == '#'
BEGIN
	UPDATE 
		room_407
	SET
		gpu_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_gpu_of_room_408_was_deleted 
	AFTER UPDATE OF gpu_config ON room_408
	WHEN NEW.gpu_config == '#'
BEGIN
	UPDATE 
		room_408
	SET
		gpu_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_gpu_of_room_409_was_deleted 
	AFTER UPDATE OF gpu_config ON room_409
	WHEN NEW.gpu_config == '#'
BEGIN
	UPDATE 
		room_409
	SET
		gpu_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_gpu_of_room_411_was_deleted 
	AFTER UPDATE OF gpu_config ON room_411
	WHEN NEW.gpu_config == '#'
BEGIN
	UPDATE 
		room_411
	SET
		gpu_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_gpu_of_room_412_was_deleted 
	AFTER UPDATE OF gpu_config ON room_412
	WHEN NEW.gpu_config == '#'
BEGIN
	UPDATE 
		room_412
	SET
		gpu_status = '#',
        general_status = general_status + 1
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_psu_of_room_301_was_deleted 
	AFTER UPDATE OF psu_config ON room_301
	WHEN NEW.psu_config == '#'
BEGIN
	UPDATE 
		room_301
	SET
		psu_status = '#',        
		general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_psu_of_room_302_was_deleted 
	AFTER UPDATE OF psu_config ON room_302
	WHEN NEW.psu_config == '#'
BEGIN
	UPDATE 
		room_302
	SET
		psu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_psu_of_room_303_was_deleted 
	AFTER UPDATE OF psu_config ON room_303
	WHEN NEW.psu_config == '#'
BEGIN
	UPDATE 
		room_303
	SET
		psu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_psu_of_room_401_was_deleted 
	AFTER UPDATE OF psu_config ON room_401
	WHEN NEW.psu_config == '#'
BEGIN
	UPDATE 
		room_401
	SET
		psu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_psu_of_room_402_was_deleted 
	AFTER UPDATE OF psu_config ON room_402
	WHEN NEW.psu_config == '#'
BEGIN
	UPDATE 
		room_402
	SET
		psu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_psu_of_room_404_was_deleted 
	AFTER UPDATE OF psu_config ON room_404
	WHEN NEW.psu_config == '#'
BEGIN
	UPDATE 
		room_404
	SET
		psu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_psu_of_room_405_was_deleted 
	AFTER UPDATE OF psu_config ON room_405
	WHEN NEW.psu_config == '#'
BEGIN
	UPDATE 
		room_405
	SET
		psu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_psu_of_room_406_was_deleted 
	AFTER UPDATE OF psu_config ON room_406
	WHEN NEW.psu_config == '#'
BEGIN
	UPDATE 
		room_406
	SET
		psu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_psu_of_room_407_was_deleted 
	AFTER UPDATE OF psu_config ON room_407
	WHEN NEW.psu_config == '#'
BEGIN
	UPDATE 
		room_407
	SET
		psu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_psu_of_room_408_was_deleted 
	AFTER UPDATE OF psu_config ON room_408
	WHEN NEW.psu_config == '#'
BEGIN
	UPDATE 
		room_408
	SET
		psu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_psu_of_room_409_was_deleted 
	AFTER UPDATE OF psu_config ON room_409
	WHEN NEW.psu_config == '#'
BEGIN
	UPDATE 
		room_409
	SET
		psu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_psu_of_room_411_was_deleted 
	AFTER UPDATE OF psu_config ON room_411
	WHEN NEW.psu_config == '#'
BEGIN
	UPDATE 
		room_411
	SET
		psu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;

CREATE TRIGGER verify_if_psu_of_room_412_was_deleted 
	AFTER UPDATE OF psu_config ON room_412
	WHEN NEW.psu_config == '#'
BEGIN
	UPDATE 
		room_412
	SET
		psu_status = '#',
        general_status = general_status + 2
	WHERE
		id = OLD.id;
END;
DROP TABLE IF EXISTS room;

CREATE TABLE room (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0, /* OK, MONITOR, COMPUTADOR, REDE, REDE + POWER, POWER */
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY', /* POSSO REMOVER */
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY', /* SE REMOVIDO, REMOVE TAMBÉM > OS, MOTHERBOARD, CPU, MEMORY, STORAGE */
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY', /* POSSO REMOVER */
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY', /* POSSO REMOVER */
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY', /* SÓ TROCAR */
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY', /* POSSO REMOVER */
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
/* 	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	power_status TEXT NOT NULL DEFAULT 'EMPTY',*/
	CHECK (CAST(general_status AS INTEGER) >= -1 AND CAST(general_status AS INTEGER) <= 2) 
);

/* CREATE TRIGGER case_removed_room1
   AFTER UPDATE ON room1
   WHEN NEW.case_config == 'EMPTY'
BEGIN
	UPDATE room1
		SET
			os_config = 'EMPTY',
			os_status = 'EMPTY',
			motherboard_config = 'EMPTY',
			motherboard_status = 'EMPTY',
			cpu_config = 'EMPTY',
			cpu_status = 'EMPTY',
			memory_config = 'EMPTY',
			memory_status = 'EMPTY',
			storage_config = 'EMPTY',
			storage_status = 'EMPTY'
		WHERE
			id = x;
END; */
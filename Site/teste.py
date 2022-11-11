import sqlite3

connection = sqlite3.connect('teste.db')

with open('sql-teste.sql') as f:
    connection.executescript(f.read())

cur = connection.cursor()

for i in range(1, 41):
    cur.execute("INSERT INTO \
                    room (slot,\
                         monitor_config, monitor_status,\
                         computer_config, computer_status,\
                         keyboard_config, keyboard_status,\
                         mouse_config, mouse_status,\
                         os_config, os_status,\
                         network_config, network_status,\
                         general_status) \
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
                ('slot_'+str(i), 'POSITIVO 22" [22MP55PQ]', 'OK', 'HP EliteDesk [800 G1 SFF]', 'OK', 'PCTOP [HK3004]', 'OK', 'Multilaser Classic [MO300]', 'OK', 'Windows 10 [22H2]', 'OK', 'CABONNET [350 mbps]', 'OK', 0))

cur.execute("INSERT INTO \
                    room (slot,\
                         monitor_config, monitor_status,\
                         computer_config, computer_status,\
                         keyboard_config, keyboard_status,\
                         mouse_config, mouse_status,\
                         os_config, os_status,\
                         network_config, network_status,\
                         general_status) \
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
                ('slot_prof', 'POSITIVO 22" [22MP55PQ]', 'OK', 'HP EliteDesk [800 G1 SFF]', 'OK', 'PCTOP [HK3004]', 'OK', 'Multilaser Classic [MO300]', 'OK', 'Windows 10 [22H2]', 'OK', 'CABONNET [350 mbps]', 'OK', 0))

connection.commit()
connection.close()
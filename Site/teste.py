import sqlite3

connection = sqlite3.connect('teste.db')

with open('sql-teste.sql') as f:
    connection.executescript(f.read())

cur = connection.cursor()

emptySlots = [1,2,3,4,6,7,8,9,10,11,17,28,39,50]
counter = 1

for i in range(1, 56):
    if i in emptySlots: # slots que por padrão ficarão vazios
        cur.execute("INSERT INTO room \
                         (name, general_status, \
                         monitor_config, monitor_status, \
                         computer_config, computer_status, \
                         keyboard_config, keyboard_status, \
                         mouse_config, mouse_status, \
                         os_config, os_status, \
                         network_config, network_status) \
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
                        ('#','#',
                        '#','#',
                        '#','#',
                        '#','#',
                        '#','#',
                        '#','#',
                        '#','#'))
    elif i == 5: # slot do professor
        cur.execute("INSERT INTO room \
                         (name, general_status, \
                         monitor_config, monitor_status, \
                         computer_config, computer_status, \
                         keyboard_config, keyboard_status, \
                         mouse_config, mouse_status, \
                         os_config, os_status, \
                         network_config, network_status) \
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
                        ('slot_Prof', 0, 
                        'POSITIVO 22" [22MP55PQ]', 'OK', 
                        'HP EliteDesk [800 G1 SFF]', 'OK', 
                        'PCTOP [HK3004]', 'OK', 
                        'Multilaser Classic [MO300]', 
                        'OK', 'Windows 10 [22H2]', 'OK', 
                        'CABONNET [350 mbps]', 'OK'))
    else: # slots dos alunos
        cur.execute("INSERT INTO room \
                         (name, general_status, \
                         monitor_config, monitor_status, \
                         computer_config, computer_status, \
                         keyboard_config, keyboard_status, \
                         mouse_config, mouse_status, \
                         os_config, os_status, \
                         network_config, network_status) \
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
                        ('slot_'+str(counter), 0,
                        'POSITIVO 22" [22MP55PQ]', 'OK', 
                        'HP EliteDesk [800 G1 SFF]', 'OK', 
                        'PCTOP [HK3004]', 'OK', 
                        'Multilaser Classic [MO300]', 'OK', 
                        'Windows 10 [22H2]', 'OK', 
                        'CABONNET [350 mbps]', 'OK'))
        counter += 1

connection.commit()
connection.close()
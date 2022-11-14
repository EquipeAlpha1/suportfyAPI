import sqlite3

connection = sqlite3.connect('database.db')

with open('schema.sql') as f:
    connection.executescript(f.read())

cur = connection.cursor()

cur.execute('INSERT INTO users \
                (names, emails, passwords) \
            VALUES (?, ?, ?)',
                ('Pedro','pedro@fake.com','123456ab'))

cur.execute('INSERT INTO users \
                (names, emails, passwords) \
            VALUES (?, ?, ?)',
                ('Gabriela','gabi@uol.com.br','asdfghjk'))

counter = 10
tempSlotStatus = 0
disabledSlots = [1,2,3,4,6,7,8,9,10,11,17,28,39,50]
lastSlot4thRow = 44

layouts = {
	'Larger': {
        'Rooms': ['402'],
        'EmptySlots': [12, 18, 23, 33, 34, 40, 45, 55]
        }, 
	'Medium': {
        'Rooms': ['301', '302', '401'],
        'EmptySlots': [13, 15, 18, 22, 23, 27, 30, 32, 35, 37, 40, 44, 45, 49, 52, 54]
        },
	'Small': {
        'Rooms': ['303', '404', '405', '406', '407', '408', '409', '411', '412'],
        'EmptySlots': [13, 15, 18, 22, 23, 27, 30, 32, 35, 37, 40, 44, 45, 46, 47, 48, 49, 51, 52, 53, 54, 55]
        } 
}

for size in layouts.keys():
    emptySlots = layouts[size]['EmptySlots']
    for roomNumber in layouts[size]['Rooms']:
        cur.execute('INSERT INTO rooms \
                        (floor, room) \
                    VALUES (?, ?)',
                        (roomNumber[0]+'rd', roomNumber))
        counter = 10    
        for i in range(1, 56):
            if counter < 10:
                tempCounter = '0'+str(counter)
            else:
                tempCounter = str(counter)
            if i in emptySlots: # slots de espaçamento
                cur.execute('INSERT INTO room_'+roomNumber+' \
                                (name, general_status, \
                                monitor_config, monitor_status, \
                                case_config, case_status, \
                                keyboard_config, keyboard_status, \
                                mouse_config, mouse_status, \
                                os_config, os_status, \
                                network_config, network_status, \
                                motherboard_config, motherboard_status, \
                                cpu_config, cpu_status, \
                                memory_config, memory_status, \
                                storage_config, storage_status, \
                                gpu_config, gpu_status, \
                                psu_config, psu_status) \
                            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
                                ('#','#',
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#'))
            elif i == 5: # slot do professor
                cur.execute('INSERT INTO room_'+roomNumber+' \
                                (name, general_status, \
                                monitor_config, monitor_status, \
                                case_config, case_status, \
                                keyboard_config, keyboard_status, \
                                mouse_config, mouse_status, \
                                os_config, os_status, \
                                network_config, network_status, \
                                motherboard_config, motherboard_status, \
                                cpu_config, cpu_status, \
                                memory_config, memory_status, \
                                storage_config, storage_status, \
                                gpu_config, gpu_status, \
                                psu_config, psu_status) \
                            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
                                ('slot_Prof', 0, 
                                'POSITIVO 22" [22MP55PQ]', 'OK', 
                                'HP EliteDesk [800 G1 SFF]', 'OK', 
                                'PCTOP [HK3004]', 'OK', 
                                'Multilaser Classic [MO300]', 'OK', 
                                'Windows 10 [22H2]', 'OK', 
                                'CABONNET [350 mbps]', 'OK',
                                'Gigabyte [GA-A320M-H]','OK',
                                'AMD Ryzen 5 5600G [100-100000252BOX]','OK',
                                'Corsair Vengeance LPX 8GB 3200MHz DDR4 CL16 [CMK8GX4M1E3200C16]','OK',
                                'SSD 480 GB Kingston [SA400S37/480G]','OK',
                                'Radeon™ Graphics [Onboard]','OK',
                                'EVGA 450W 80 Plus Bronze [100-BR-0450-K]', 'OK'))
            elif i in emptySlots: # slots vazios ou sem bancada
                tempSlotStatus = -1 if (i <= lastSlot4thRow or size != 'Small') else -2
                cur.execute('INSERT INTO room_'+roomNumber+' \
                                (name, general_status, \
                                monitor_config, monitor_status, \
                                case_config, case_status, \
                                keyboard_config, keyboard_status, \
                                mouse_config, mouse_status, \
                                os_config, os_status, \
                                network_config, network_status, \
                                motherboard_config, motherboard_status, \
                                cpu_config, cpu_status, \
                                memory_config, memory_status, \
                                storage_config, storage_status, \
                                gpu_config, gpu_status, \
                                psu_config, psu_status) \
                            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
                                ('slot_'+tempCounter, tempSlotStatus,
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#',
                                '#','#'))
                counter -= 1
                counter += 20 if (counter == 0 or counter == 10 or counter == 20) else 0                
            else: # slots dos alunos
                cur.execute('INSERT INTO room_'+roomNumber+' \
                                (name, general_status, \
                                monitor_config, monitor_status, \
                                case_config, case_status, \
                                keyboard_config, keyboard_status, \
                                mouse_config, mouse_status, \
                                os_config, os_status, \
                                network_config, network_status, \
                                motherboard_config, motherboard_status, \
                                cpu_config, cpu_status, \
                                memory_config, memory_status, \
                                storage_config, storage_status, \
                                gpu_config, gpu_status, \
                                psu_config, psu_status) \
                            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
                                ('slot_'+tempCounter, 0, 
                                'POSITIVO 22" [22MP55PQ]', 'OK', 
                                'HP EliteDesk [800 G1 SFF]', 'OK', 
                                'PCTOP [HK3004]', 'OK', 
                                'Multilaser Classic [MO300]', 'OK', 
                                'Windows 10 [22H2]', 'OK', 
                                'CABONNET [350 mbps]', 'OK',
                                'Gigabyte [GA-A320M-H]','OK',
                                'AMD Ryzen 5 5600G [100-100000252BOX]','OK',
                                'Corsair Vengeance LPX 8GB 3200MHz DDR4 CL16 [CMK8GX4M1E3200C16]','OK',
                                'SSD 480 GB Kingston [SA400S37/480G]','OK',
                                'Radeon™ Graphics [Onboard]','OK',
                                'EVGA 450W 80 Plus Bronze [100-BR-0450-K]', 'OK'))
                counter -= 1
                counter += 20 if (counter == 0 or counter == 10 or counter == 20) else 0
                      
connection.commit()
connection.close()
import sqlite3
import random

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
ipRoom = 0

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

inventory = {
    'Monitor': {
        'ASUS': {
            'TUF Gaming VG24VQ 24"':3,
            'ROG Strix 27" 1440P HDR Gaming Monitor (XG27AQM)':4,
            'ROG Strix XG49VQ 49"':5
        },
        'SAMSUNG': {
            'G5 Odyssey LC27G55TQWNXZA 27"':3,
            'T350 Series LF22T350FHNXZA 22"':4,
            'Odyssey Neo G7 LS32BG752NNXGO 32"':5
        },
        'LG': {
            '32UL500-W 32"':3,
            'UltraGear 27GN950-B 27"':4,
            '32GK650F-B 32"':5
        }
    },
    'Case': {
        'Cooler Master': {
            'MasterBox NR200P White SFF':3,
            'HAF700 H700-IGNN-S00 Titanium Grey SGCC Steel':4,
            'MasterCase H500M ARGB Airflow ATX Mid-Tower':5
        },
        'Thermaltake': {
            'Core V21 Black Extreme Micro ATX Cube':3,
            'Tower 900 Black Tempered Glass Fully Modular E-ATX Vertical Super Tower':4,
            'Versa H18 Tempered Glass Black SPCC Micro ATX':5
        },
        'Corsair': {
            '4000D Airflow CC-9011200-WW ATX Mid Tower':3,
            'iCUE 4000X RGB CC-9011204-WW ATX Mid Tower':4,
            '4000D Airflow CC-9011201-WW White ATX Mid Tower':5
        }
    },
    'Keyboard': {
        'Logitech': {
            'MK550 Wireless':3,
            'MK120 Wired':4,
            'K120 Wired':5
        },
        'ASUS': {
            'ROG Strix Flare RGB':3,
            'ROG Strix Scope NX TKL Moonlight White Wired':4,
            '90MP0240-BKUA00 ROG Strix Scope RX':5
        },
        'RAZER': {
            'BlackWidow V3 Tenkeyless, Chroma, Razer Switch Green, US':3,
            'Cynosa V2, Chroma, Membrane Switch, US':4,
            'Huntsman Mini, Chroma, Razer Switch Purple, US, Mercury White':5
        }
    },
    'Mouse': {
        'Logitech': {
            'G403 HERO com RGB LIGHTSYNC, 6 Botões Programáveis, Ajuste de Peso e Sensor HERO 25K':3,
            'G203 LIGHTSYNC RGB, Efeito de Ondas de Cores, 6 Botões Programáveis e Até 8.000 DPI, Preto':4,
            'M90 com Design Ambidestro e Facilidade Plug and Play':5
        },
        'RAZER': {
            'Deathadder V2 Mini, Chroma, Optical Switch, 6 Botões, 8500DPI + Mouse Grip Tape':3,
            'Deathadder V2 Chroma, Optical Switch, 8 Botões, 20000DPI':4,
            'Viper Mini, Chroma, Optical Switch, 6 Botões, 8500DPI ':5
        },
        'HyperX': {
            'Pulsefire Core RGB 6200 DPI':3,
            'Pulsefire Surge RGB 16000 DPI':4,
            'Pulsefire Raid RGB 16000 DPI':5
        }
    },
    'OS': {
        'Microsoft': {
            'Windows 7':3,
            'Windows 10':4,
            'Windows 11':5
        },
        'Linux': {
            'Kali':3,
            'Manjaro':4,
            'Ubuntu':5
        }
    },
    'Motherboard': {
        'Socket Intel': {
            'Asus Prime H510M-A, Intel Socket LGA1200, microATX, DDR4':3,
            'Gigabyte B560M Aorus Elite, LGA 1200, Micro ATX, DDR4, (rev. 1.0)':4,
            'Asus TUF Gaming B460M-Plus, Intel LGA1200, mATX, DDR4':5
        },
        'Socket AMD': {
            'ASRock B450M Steel Legend, AMD AM4, mATX, DDR4':3,
            'Asus Prime A320M-K/BR, AMD AM4, mATX, DDR4':4,
            'Gigabyte GA-A320M-S2H, AMD AM4, mATX, DDR4':5
        }
    },
    'CPU': {
        'Intel': {
            'i7-10700F, 2.9GHz (4.8GHz Max Turbo), Cache 16MB, LGA 1200':3,
            'i5-11400F, 2.6 GHz (4.4GHz Turbo), Cache 12MB, 6 Núcleos, 12 Threads, LGA1200':4,
            'i3-10100F, 3.6GHz (4.3GHz Max Boost), Cache 6MB, Quad Core, 8 Threads, LGA 1200':5
        },
        'AMD': {
            'Ryzen 5 3600 Cache 32MB 3.6GHz(4.2GHz Max Turbo) AM4, Sem Vídeo':3,
            'Ryzen 5 4500, 3.6GHz (4.1GHz Max Turbo) Cache 11MB, AM4, Sem Vídeo':4,
            'Ryzen 5 5600G, 3.9GHz (4.4GHz Max Turbo), AM4, Vídeo Integrado, 6 Núcleos':5
        }
    },
    'Memory': {
        'Corsair': {
            'Vengeance LPX, 8GB, 3200MHz, DDR4, CL16, Preta':3,
            'Vengeance LPX, 8GB, 2666MHz, DDR4, C16, Preto':4,
            'Vengeance RGB Pro, 8GB, 3200MHz, DDR4, CL16, Preta':5
        },
        'Crucial': {
            'Ballistix, 8GB, 3200MHz, DDR4, CL16, Vermelho':3,
            'Ballistix, 8GB, 3200MHz, DDR4, CL16, Preto':4,
            'Basics, 4GB, 2666MHz, DDR4, CL19':5
        },
        'HyperX': {
            'Fury 16GB, 3200Mhz, DDR4, CAS 16, Preto':3,
            'Fury 4GB Black, Ddr4, 2400mhz, Cl15':4,
            'Fury Black, 8GB, 2666Mhz, DDR4, Cl16':5
        }
    },
    'Storage': {
        'Seagate': {
            '4TB IronWolf NAS, 3.5", SATA':3,
            '2TB BarraCuda, 3.5", SATA':4,
            '4TB BarraCuda, 3.5", SATA':5
        },
        'Western Digital': {
            '4TB, 5400RPM, Cache 256 MB, 3.5", SATA':3,
            'Purple Surveillance 4TB, 5400RPM, Cache 256MB, 3.5, SATA':4,
            'Purple Surveillance, 4TB, 3.5´, SATA':5
        },
        'Kingston': {
            'A400, SATA, Leitura: 500MB/s e Gravação: 350MB/s':3,
            'A400, SATA, Leitura: 500MB/s e Gravação: 450MB/s':4,
            'NV1, M.2 2280 NVMe, Leitura: 2100MB/s e Gravação: 1700MB/s':5
        }
    },
    'GPU': {
        'ASUS': {
            'GTX 1650 Asus NVIDIA GeForce, 4GB, GDDR6':3,
            'GTX 1660 Super O6G Gaming OC Asus NVIDIA GeForce TUF, 6GB GDDR6, IP5X, Preto':4,
            'GTX 1050 Ti Asus NVIDIA GeForce OC Cerberus, 4GB GDDR5':5
        },
        'Gigabyte': {
            'GT 1030 Gigabyte NVIDIA GeForce D4, 2GB DDR4':3,
            'GTX 1050 2GB, GDDR5, Gigabyte GV-N1050G1, Gaming 2G':4,
            'RTX 3050 Gaming OC Gigabyte NVIDIA GeForce, 8GB GDDR6, RGB, LHR, DLSS, Ray Tracing':5
        },
        'MSI': {
            'RTX 2060 Ventus GP OC MSI NVIDIA GeForce, 6GB GDDR6, Ray Tracing':3,
            'RX 6500 XT MECH 2X 4G OC MSI AMD Radeon, 4GB GDDR6, AMD RDNA 2':4,
            'GT 1030 MSI NVIDIA GeForce 2GD4 LP OC 2GB, DDR4':5
        }
    },
    'PSU': {
        'Corsair': {
            'CV450, 450W, 80 Plus Bronze':3,
            'CV550, 550W, 80 Plus Bronze':4,
            'CV650, 650W, 80 Plus Bronze':5
        },
        'Cooler Master': {
            '400W ELITE 400 V3 PFC Ativo Sem Cabo Silenciosa Bivolt':3,
            'MWE Gold V2, 850W, 80 Plus Gold, Full Modular, PFC Ativo, Bivolt, Preto':4,
            'MWE V2, 550W, 80 Plus Bronze':5
        },
        'EVGA': {
            '850W, 80 Plus Gold, Semi Modular':3,
            '500W, 80 Plus Bronze':4,
            '450W, 80 Plus Bronze':5
        }
    }
}
            
lastMBSocket = 0

def selectItem(type):

    global lastMBSocket

    brand = random.randint(0, 2) if type != 'OS' and type != 'Motherboard' and type != 'CPU' else random.randint(0, 1)
    item = random.randint(0, 2)

    """ 
    list(inventory['Monitor'][list(inventory['Monitor'])[brand]].keys())[item] # = 'key'
    list(inventory['Monitor'][list(inventory['Monitor'])[brand]].values())[item] # = 'values' 
    """
    if type != 'CPU':
        if type != 'Motherboard':
            marca = list(inventory[type])[brand]
            modelo = list(inventory[type][list(inventory[type])[brand]].keys())[item]
        else:
            lastMBSocket = brand
            marca = list(inventory[type][list(inventory[type])[brand]].keys())[item].split(' ')[0]
            modelo = list(inventory[type][list(inventory[type])[brand]].keys())[item].split(' ',1)[1]
    else:
        marca = list(inventory[type])[lastMBSocket]
        modelo = list(inventory[type][list(inventory[type])[lastMBSocket]].keys())[item]
        
    return marca + ' [' + modelo + ']'

def generateMac():
    myhexdigits = []
    for x in range(6):
        a = random.randint(0,255)
        hex = '%02x' % a
        myhexdigits.append(hex.upper())
    return '-'.join(myhexdigits)

for size in layouts.keys():
    emptySlots = layouts[size]['EmptySlots']
    for roomNumber in layouts[size]['Rooms']:
        cur.execute('INSERT INTO rooms \
                        (floor, room) \
                    VALUES (?, ?)',
                        (roomNumber[0]+'rd', roomNumber))
        counter = 10
        ipRoom = (int(roomNumber) - 300) if (int(roomNumber) < 400) else (int(roomNumber) - 400)
        configsRoom = {}
        for i in range(11):
            configsRoom[list(inventory.keys())[i]] = selectItem(list(inventory.keys())[i])
        for i in range(1, 56):
            if i in disabledSlots: # slots de espaçamento
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
                                psu_config, psu_status, \
                                ip_config, ip_status, \
                                mac_config, mac_status) \
                            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
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
                                psu_config, psu_status, \
                                ip_config, ip_status, \
                                mac_config, mac_status) \
                            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
                                ('slot_Prof', 0, 
                                configsRoom['Monitor'], 'OK', 
                                configsRoom['Case'], 'OK', 
                                configsRoom['Keyboard'], 'OK', 
                                configsRoom['Mouse'], 'OK', 
                                configsRoom['OS'], 'OK', 
                                'CABONNET [350 mbps]', 'OK',
                                configsRoom['Motherboard'],'OK',
                                configsRoom['CPU'],'OK',
                                configsRoom['Memory'],'OK',
                                configsRoom['Storage'],'OK',
                                configsRoom['GPU'],'OK',
                                configsRoom['PSU'], 'OK',
                                '192.168.'+str(ipRoom)+'.'+str(i),'Estático',
                                generateMac(),'OK'))
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
                                psu_config, psu_status, \
                                ip_config, ip_status, \
                                mac_config, mac_status) \
                            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
                                ('slot_'+str(counter),tempSlotStatus,
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
                                psu_config, psu_status, \
                                ip_config, ip_status, \
                                mac_config, mac_status) \
                            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
                                ('slot_'+str(counter), 0, 
                                configsRoom['Monitor'], 'OK', 
                                configsRoom['Case'], 'OK', 
                                configsRoom['Keyboard'], 'OK', 
                                configsRoom['Mouse'], 'OK', 
                                configsRoom['OS'], 'OK', 
                                'CABONNET [350 mbps]', 'OK',
                                configsRoom['Motherboard'],'OK',
                                configsRoom['CPU'],'OK',
                                configsRoom['Memory'],'OK',
                                configsRoom['Storage'],'OK',
                                configsRoom['GPU'],'OK',
                                configsRoom['PSU'], 'OK',
                                '192.168.'+str(ipRoom)+'.'+str(i),'Estático',
                                generateMac(),'OK'))
                counter -= 1
                counter += 20 if (counter == 0 or counter == 10 or counter == 20) else 0

for keyL1, valueL1 in inventory.items(): # keyL1 = TIPO
    for keyL2, valueL2 in valueL1.items(): # keyL2 = MARCA
        for keyL3, valueL3 in valueL2.items(): # keyL3 = MODELO
            cur.execute('INSERT INTO inventory \
                        (type, brand, model, amount) \
                    VALUES (?, ?, ?, ?)',
                        (keyL1, keyL2, keyL3, valueL3))

connection.commit()
connection.close()
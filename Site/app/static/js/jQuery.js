$(document).on('submit','#addSlot',function(e) {
    
    var addMonitor = $("#addMonitor").val();
    var addComputer = $("#addComputer").val();
    var addKeyboard = $("#addKeyboard").val();
    var addMouse = $("#addMouse").val();

    e.preventDefault(); /* Essa função evita de recarregar a página no evento 'Submit' */

    if (!addMonitor && !addComputer && !addKeyboard && !addMouse) {    
        return; /* Caso falte preencher algum campo do formulário, sai do script */
    }; 

    $.ajax ({

        type:'POST',
        url:'/add_slot', /* URL para rota flask */
        data: { /* Passa um dicionário com os dados inseridos no formulário para o Flask registrar */
            monitor : addMonitor,
            computer : addComputer,
            keyboard : addKeyboard,
            mouse : addMouse
        }

    });
});

$(document).on('submit','#editSlot',function(e) {
    
    var editMonitorConfig = $("#editMonitorConfig").val();
    var editComputerConfig = $("#editComputerConfig").val();
    var editKeyboardConfig = $("#editKeyboardConfig").val();
    var editMouseConfig = $("#editMouseConfig").val();

    var editMonitorStatus = $("#editMonitorStatus").val();
    var editComputerStatus = $("#editComputerStatus").val();
    var editKeyboardStatus = $("#editKeyboardStatus").val();
    var editMouseStatus = $("#editMouseStatus").val();

    e.preventDefault(); /* Essa função evita de recarregar a página no evento 'Submit' */

    if (!editMonitorConfig && !editComputerConfig && !editKeyboardConfig && !editMouseConfig && !editMonitorStatus && !editComputerStatus && !editKeyboardStatus && !editMouseStatus) {    
        return; /* Caso falte preencher algum campo do formulário, sai do script */
    }; 

    $.ajax ({

        type:'POST',
        url:'/edit_slot', /* URL para rota flask */
        data: { /* Passa um dicionário com os dados inseridos no formulário para o Flask registrar */
            monitorConfig : editMonitorConfig,
            computerConfig : editComputerConfig,
            keyboardConfig : editKeyboardConfig,
            mouseConfig : editMouseConfig,
            monitorStatus : editMonitorStatus,
            computerStatus : editComputerStatus,
            keyboardStatus : editKeyboardStatus,
            mouseStatus : editMouseStatus
        }

    });
});

$(document).on('submit','#deleteSlot',function(e) {
    
    var deleteMonitor = $("#deleteMonitor").val();
    var deleteComputer = $("#deleteComputer").val();
    var deleteKeyboard = $("#deleteKeyboard").val();
    var deleteMouse = $("#deleteMouse").val();

    e.preventDefault(); /* Essa função evita de recarregar a página no evento 'Submit' */

    if (!deleteMonitor && !deleteComputer && !deleteKeyboard && !deleteMouse) {    
        return; /* Caso falte preencher algum campo do formulário, sai do script */
    }; 

    $.ajax ({

        type:'POST',
        url:'/delete_slot', /* URL para rota flask */
        data: { /* Passa um dicionário com os dados inseridos no formulário para o Flask registrar */
            monitor : deleteMonitor,
            computer : deleteComputer,
            keyboard : deleteKeyboard,
            mouse : deleteMouse
        }

    });
});

$(document).on('submit','#formEmail',function(e) {/* <!-- Essa função será ativada, quando o usuário clicar em qualquer botão 'Submit' do formulário --> */

    var c1_name = $("#c1_name").val();
    var c1_email = $("#c1_email").val();
    var pc = $("input[name='c2_computadores']:checked").val(); /* Pega o valor(número) do computador que está selecionado */
    if (pc) {
        var c2_floor = pc.split(' ')[1].charAt(0); /* O primeiro caractere do número da sala, é equivalente ao número do andar */
        var c2_room = pc.split(' ')[1]; /* O  */
        var c2_pc_label = pc.split(' ')[0];
        var c2_pc_id = $("input[name='c2_computadores']:checked").attr('id');
    };    
    var c3_assunto = $("#c3_subject").val();
    var c3_texto = $("#c3_description").val();

    var btn = ($(document.activeElement).val()); /* Salva o valor do botão 'Submit', para verificar qual deles foi clicado */

    if (btn == 'SendMail') {
        
        e.preventDefault(); /* Essa função evita de recarregar a página no evento 'Submit' */

        if (!c1_name && !c1_email && !pc && !c3_assunto && !c3_texto) {    
            return; /* Caso falte preencher algum campo do formulário, sai do script */
        };        

        var nFile = document.getElementById('formFile').files.length; /* Salva o número de arquivos anexados ao formulário */

        if (nFile > 0) { /* Verifica se foi inserido pelo menos um arquivo no formulário */
                
            var form_data = new FormData();           
            form_data.append('file', document.getElementById('formFile').files[0]); /* Anexa o arquivo ao objeto FormData */

            $.ajax ({

                type:'POST',
                url:'/upload_file', /* URL para rota flask */
                data: form_data, /* Passa o objeto com o arquivo do formulário para o Flask fazer o upload */
                contentType: false,
                cache: false,
                processData: false  
                            
            });

        };

        console.log(c2_floor, c2_room, c2_pc_label, c2_pc_id);
        $.ajax ({

            type:'POST',
            url:'/create_request', /* URL para rota flask */
            data: { /* Passa um dicionário com os dados inseridos no formulário para o Flask registrar */
                name : c1_name,
                mail : c1_email,
                floor : c2_floor,
                room : c2_room,
                pc : c2_pc_label,
                pc_id : c2_pc_id,
                subject : c3_assunto,
                description : c3_texto
            }

        });

        $('#formEmail')[0].reset(); /* Reseta os dados inseridos no formulário */
    };
    
});
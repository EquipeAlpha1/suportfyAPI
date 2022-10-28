$(document).on('submit','#formEmail',function(e) {/* <!-- ESSE SCRIPT IMPEDE O FLASK DE ATUALIZAR A PÁGINA, QUANDO ENVIAR O EMAIL --> */
    var c1_name = $('#c1_name')[0].value;
    var c1_email = $('#c1_email')[0].value;
    var c1_floor = $('#c1_floor')[0].value;
    var c1_room = $('#c1_room')[0].value;
    var c3_assunto = $('#c3_subject')[0].value;
    var c3_texto = $('#c3_description')[0].value;
    var form_data = new FormData();           
    form_data.append('file', $('#formEmail')[0].files[0]);  
    var btn = ($(document.activeElement).val());
    if (btn == 'SendMail') {
        e.preventDefault(); /* ESSA FUNÇÃO EVITA DE RECARREGAR A PÁGINA */
        $.ajax ({
            type:'POST',
            url:'/create_request', /* URL para rota flask */
            data: { /* A função 'def home()' no Flask vai puxar os dados desse 'dicionário' */
                name:$("#c1_name").val(), /* Na onde tem # vai o ID do objeto HTML que está dentro do 'formEmail' no 'content.html' */
                mail:$("#c1_email").val(),
                floor:$("#c1_floor").val(),
                room:$("#c1_room").val(),
                pc:$("input[name='c2_computadores']:checked").val(),
                subject:$("#c3_subject").val(),
                description:$("#c3_description").val(),
                form_data
            }
        });
        if (c1_name && c1_email && c1_floor && c1_room && c3_assunto && c3_texto) {      
            $('#formEmail')[0].reset(); /* Reseta o formulário para não enviar e-mail atoa */
        };
    } else if (btn == 'Refresh') {
        console.log('reset form');
        $.ajax ({
            type:'GET',
            url:'/consult_requests'
        });
    };
});
$(document).on('submit','#formEmail',function(e) {/* <!-- ESSE SCRIPT IMPEDE O FLASK DE ATUALIZAR A PÁGINA, QUANDO ENVIAR O EMAIL --> */
    var c1_name = $('#c1_name')[0].value;
    var c1_email = $('#c1_email')[0].value;
    var c1_floor = $('#c1_floor')[0].value;
    var c1_room = $('#c1_room')[0].value;
    var c3_assunto = $('#c3_assunto')[0].value;
    var c3_texto = $('#c3_texto')[0].value;
    var btn = ($(document.activeElement).val());
    if (btn == 'SendMail') {
        e.preventDefault(); /* ESSA FUNÇÃO EVITA DE RECARREGAR A PÁGINA */
        
        var form_data = new FormData();
        form_data.append('file', $('#formEmail').prop('files')[0]);

        $.ajax({
            type: 'POST',
            url: '/create_request',
            data: form_data,
            contentType: false,
            cache: false,
            processData: false
        });

        if (c1_name && c1_email && c1_floor && c1_room && c3_assunto && c3_texto) {      
            $('#formEmail')[0].reset(); /* Reseta o formulário para não enviar e-mail atoa */
        };
    } else if (btn == 'Refresh') {

        $.ajax({
            type: 'GET',
            url: '/consult_requests'
        });
        
    };
});
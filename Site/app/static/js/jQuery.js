$(function() {

    var form;
    $('#formFile').change(function (event) {        
        var form_data = new FormData($('#formEmail')[0]);
        var filename = event.target.files[0].content.name; // para capturar o nome do arquivo com sua extenção
        $.ajax({
            type: 'POST',
            url: '/upload_file',
            data: form_data,
            contentType: false,
            cache: false,
            processData: false,
            success: function(data) {
                console.log('Success!');
            },
        });
    });

    $('#SendMail').click(function(e) {
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: '/create_request',
            data: {
                name: $('#c1_name').val(),
                mail: $('#c1_email').val(),
                floor: $('#c1_floor').val(),
                room: $('#c1_room').val(),
                pc: $("input[name='c2_computadores']:checked").val(),
                subject: $('#c3_subject').val(),
                description: $('#c3_description').val(),
                filename: filename
                /* file:$('#formEmail')[0].files[0] */
            }/* ,
            contentType: false,
            cache: false,
            processData: false */
        });
    });
});

$(function() {
    $('#Refresh').click(function(e) {
        console.log('Refresh');
        $.ajax({
            type: 'POST',
            url: '/consult_requests',
            data: {}
        });
    });    
});
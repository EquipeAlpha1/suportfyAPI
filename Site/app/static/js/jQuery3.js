$(function() {
    $('#SendMail').click(function(e) {
        var form_data = new FormData();           
        form_data.append('file', $('#formEmail')[0].files[0]);  
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: '/create_request',
            data: form_data,
            contentType: false,
            cache: false,
            processData: false
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
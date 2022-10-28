$(function() {
    $('#SendMail').click(function(e) {
        var form_data = new FormData();      
        form_data.append('name', $("#c1_name").val()); 
        form_data.append('mail', $('#c1_email').val()); 
        form_data.append('floor', $('#c1_floor').val()); 
        form_data.append('room', $('#c1_room').val()); 
        form_data.append('pc', $("input[name='c2_computadores']:checked").val()); 
        form_data.append('subject', $('#c3_subject').val()); 
        form_data.append('description', $('#c3_description').val());         
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
$(document).on('submit','#formEmail',function(e) {/* <!-- Essa função será ativada, quando o usuário clicar em qualquer botão 'Submit' do formulário --> */

    var c1_name = $("#c1_name").val();
    var c1_email = $("#c1_email").val();
    var c1_floor = $("#c1_floor").val();
    var c1_room = $("#c1_room").val();
    var c2_pc = $("input[name='c2_computadores']:checked").val(); /* Pega o valor(número) do computador que está selecionado */
    var c3_assunto = $("#c3_subject").val();
    var c3_texto = $("#c3_description").val();

    var btn = ($(document.activeElement).val()); /* Salva o valor do botão 'Submit', para verificar qual deles foi clicado */

    if (btn == 'SendMail') {
        
        if (!c1_name && !c1_email && !c1_floor && !c1_room && !c2_pc && !c3_assunto && !c3_texto) {    
            return; /* Caso falte preencher algum campo do formulário, sai do script */
        };

        e.preventDefault(); /* Essa função evita de recarregar a página no evento 'Submit' */

        var nFile = document.getElementById('formFile').files.length; /* Salva o número de arquivos anexados ao formulário */

        if (nFile > 0) { /* Verifica se foi inserido pelo menos um arquivo na solicitação */
                
            var form_data = new FormData();           
            form_data.append('file', document.getElementById('formFile').files[0]); /* Anexa o arquivo ao objeto FormData */

            $.ajax ({

                type:'POST',
                url:'/upload_file', /* URL para rota flask */
                data: form_data, /* Objeto com o arquivo do formulário para o Flask fazer o upload */
                contentType: false,
                cache: false,
                processData: false  
                            
            });

        };

        $.ajax ({

            type:'POST',
            url:'/create_request', /* URL para rota flask */
            data: { /* Dicionário com os dados do formulário para o Flask registrar */
                name : c1_name,
                mail : c1_email,
                floor : c1_floor,
                room : c1_room,
                pc : c2_pc,
                subject : c3_assunto,
                description : c3_texto
            }

        });

        $('#formEmail')[0].reset(); /* Reseta os dados inseridos no formulário */
    };
});
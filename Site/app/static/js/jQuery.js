function recaptcha_callback(){

    var c1_name = $("#c1_name").val();
    var c1_email = $("#c1_email").val();
    var pc = $("input[name='c2_computadores']:checked").val(); /* Pega o valor(número) do computador que está selecionado */
    if (pc) {
        var c2_floor = pc.split(' ')[1].charAt(0); /* 4 */
        var c2_room = pc.split(' ')[1]; /*  405 */
        var c2_pc_label = pc.split(' ')[0]; /* Professor */
        var c2_pc_id = $("input[name='c2_computadores']:checked").attr('id'); /* 5 */
    };    
    var c3_assunto = $("#c3_subject").val();
    var c3_texto = $("#c3_description").val();

    var responseGoogle = grecaptcha.getResponse();

    if (!c1_name && !c1_email && !c1_floor && !c1_room && !c2_pc && !c3_assunto && !c3_texto) {    
        return; /* Caso falte preencher algum campo do formulário, sai do script */
    };        

    var nFile = document.getElementById('formFile').files.length; /* Salva o número de arquivos anexados ao formulário */

    if (nFile > 0) { /* Verifica se foi inserido pelo menos um arquivo no formulário */
            
        var form_data = new FormData();           
        form_data.append('file', document.getElementById('formFile').files[0]); /* Anexa o arquivo ao objeto FormData */

        console.log(c2_floor, c2_room, c2_pc_label, c2_pc_id);
        $.ajax ({

            type:'POST',
            url:'/upload_file', /* URL para rota flask */
            data: form_data, /* Passa o objeto com o arquivo do formulário para o Flask fazer o upload */
            contentType: false,
            cache: false,
            processData: false  
                        
        });

    };
    
};

$(document).on('submit','#formModal',function(e) {/* <!-- Essa função será ativada, quando o usuário clicar em qualquer botão 'Submit' do formulário --> */

    var pc = $("input[name='slotComputerEdit']:checked");
    if (pc.val()) {
        var numberRoom = pc.val().split(' ')[1]; /* SALA = 405 */
        var idSlot = pc.attr('id'); /* ID NA TABELA = 5 */
    };    
    var columnItem = $('#btnModal').attr('title'); /* COLUNA DO ITEM NA TABELA = case */    
    var operation = $('#btnModal').attr('name');

    var newItemSelected = $('#selectModal').find(":selected").text(); /* COLUNA DO ITEM NA TABELA = ASUS RGB XXX5000 */
    var newItemDigited = $('#inputDigitModal').val();
    var newItem = newItemDigited ? newItemDigited : newItemSelected;

    if (!numberRoom && !idSlot && !columnItem && !newItem) {    
        alert('ERRO');
        return; /* Caso falte preencher algum campo do formulário, sai do script */
    };        

    $.ajax ({

        type:'POST',
        url:'/update_slot', /* URL para rota flask */
        data: { /* Passa um dicionário com os dados inseridos no formulário para o Flask registrar */
            numberRoom : numberRoom,
            idSlot : idSlot,
            columnItem : columnItem,
            newItem : newItem,
            operation : operation
        }

    });
    
});
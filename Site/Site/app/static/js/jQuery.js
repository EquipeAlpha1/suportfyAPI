$(document).on('submit','#formEmail',function(e)
  {
    var btn = ($(document.activeElement).val());
    if (btn == 'SendMail') {
      e.preventDefault();
      $.ajax
      ({
        type:'POST',
        url:'/', /* URL para rota flask */
        data: /* A função python vai puxar os dados desse 'dicionário' */
        {
          name:$("#nome").val(), /* Na onde tem # vai o ID do objeto HTML que está dentro do 'formEmail' */
          mail:$("#mail").val(),
          pc:$("input[name='computador']:checked").val(),
          subject:$("#exampleDataList").val(),
          description:$("#exampleFormControlTextarea1").val()          
        }
      });
      $('#formEmail')[0].reset(); /* Reseta o formulário para não enviar e-mail atoa */
    }    
  });
$(document).on('submit','#formEmail',function(e)
    {
      e.preventDefault();
      $.ajax(
      {
        type:'POST',
        url:'/', /* URL para rota flask */
        data: /* a função flask/python vai puxar os dados desse 'dicionário' */
        {
          name:$("#nome").val(), /* na onde tem # vai o ID do objeto HTML que está dentro da tag 'form' */
          mail:$("#mail").val(),
          pc:$("input[name='computador']:checked").val(),
          subject:$("#exampleDataList").val(),
          description:$("#exampleFormControlTextarea1").val()          
        }
      });
    });
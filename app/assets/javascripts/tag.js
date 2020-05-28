$(document).on('turbolinks:load', ()=> {
  //クリックした要素にクラス割り当てる
  $('.label').click(function(){
      if ($(this).hasClass('checked')) {
          $(this)
              .removeClass('checked')
              .prev('.input').removeAttr('checked');
      } else {
          $(this)
              .addClass('checked')
              .prev('.input').attr('checked','checked');
      }
  });
});


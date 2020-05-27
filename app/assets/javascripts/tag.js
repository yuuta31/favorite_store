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
  // ボタンをクリックしたら発動
  $('.tag-btn').click(function() {

    // もしチェックが入っていたら
    if ($('input[name="check"]').prop('checked')) {
  
      // チェックを外す
      $('input[name="check"]').prop('checked', false);
  
    // もしチェックが外れていたら
    } else {
  
      // チェックを入れる
      $('input[name="check"]').prop('checked', true);
    }
  
  });
});


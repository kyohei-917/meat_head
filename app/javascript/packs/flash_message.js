$(document).on('turbolinks:load', function() {
  // フラッシュメッセージを3秒で消す
  $(function(){
    setTimeout("$('.flash-message-wrapper').fadeOut('slow')", 3000)
  });
});

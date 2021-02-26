$(document).on('turbolinks:load', function() {
  // アンサーフォーム入力時処理

  // １問目以外非表示
  $(function() {
    $('#question-1').hide();
    $('#question-2').hide();
    $('#question-3').hide();
    $('#question-4').hide();
    $('[name="commit"]:submit').hide();
  });

  // １問目YES選択→２問目へ
  $(function() {
    $( '#draggable-0' ).draggable();
    $( '#droppable-yes-0' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-yes-0')
          $('.choice-yes-0').prop('checked', true);
          $('#question-0').fadeOut();
          $('#question-1').fadeIn();
      }
    });
  });

  // １問目NO選択→２問目へ
  $(function() {
    $( '#draggable-0' ).draggable();
    $( '#droppable-no-0' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-no-0')
          $('.choice-no-0').prop('checked', true);
          $('#question-0').fadeOut();
          $('#question-1').fadeIn();
      }
    });
  });

  // 2問目YES選択→3問目へ
  $(function() {
    $( '#draggable-1' ).draggable();
    $( '#droppable-yes-1' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-yes-1')
          $('.choice-yes-1').prop('checked', true);
          $('#question-1').fadeOut();
          $('#question-2').fadeIn();
      }
    });
  });

  // 2問目NO選択→3問目へ
  $(function() {
    $( '#draggable-1' ).draggable();
    $( '#droppable-no-1' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-no-1')
          $('.choice-no-1').prop('checked', true);
          $('#question-1').fadeOut();
          $('#question-2').fadeIn();
      }
    });
  });

  // 3問目YES選択→4問目へ
  $(function() {
    $( '#draggable-2' ).draggable();
    $( '#droppable-yes-2' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-yes-2')
          $('.choice-yes-2').prop('checked', true);
          $('#question-2').fadeOut();
          $('#question-3').fadeIn();
      }
    });
  });

  // 3問目NO選択→4問目へ
  $(function() {
    $( '#draggable-2' ).draggable();
    $( '#droppable-no-2' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-no2')
          $('.choice-no-2').prop('checked', true);
          $('#question-2').fadeOut();
          $('#question-3').fadeIn();
      }
    });
  });

  // 4問目YES選択→5問目へ
  $(function() {
    $( '#draggable-3' ).draggable();
    $( '#droppable-yes-3' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-yes3')
          $('.choice-yes-3').prop('checked', true);
          $('#question-3').fadeOut();
          $('#question-4').fadeIn();
      }
    });
  });

  // 4問目NO選択→5問目へ
  $(function() {
    $( '#draggable-3' ).draggable();
    $( '#droppable-no-3' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-no-3')
          $('.choice-no-3').prop('checked', true);
          $('#question-3').fadeOut();
          $('#question-4').fadeIn();
      }
    });
  });

  // 5問目YES選択→submitボタン表示
  $(function() {
    $( '#draggable-4' ).draggable();
    $( '#droppable-yes-4' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-yes-4')
          $('.choice-yes-4').prop('checked', true);
          $('#question-4').fadeOut();
          $('[name="commit"]:submit').fadeIn();
      }
    });
  });

  // 5問目NO選択→submitボタン表示
  $(function() {
    $( '#draggable-4' ).draggable();
    $( '#droppable-no-4' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-no-4')
          $('.choice-no-4').prop('checked', true);
          $('#question-4').fadeOut();
          $('[name="commit"]:submit').fadeIn();
      }
    });
  });
});

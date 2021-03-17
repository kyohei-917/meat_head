$(document).on('turbolinks:load', function() {
  // アンサーフォーム入力時処理

  // $(".ui.text.container").css("color","red")


  // １問目以外非表示
  $(function() {
    $('#question-1').hide();
    $('#question-2').hide();
    $('#question-3').hide();
    $('#question-4').hide();
    $('#question-5').hide();
    $('#question-6').hide();
    $('#question-7').hide();
    $('#answer-submit').hide();
    $('.aiueo').hide();
  });

  // １問目YES選択→２問目へ
  $(function() {
    $( '#draggable-0' ).draggable();
    $( '#droppable-yes-0' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-yes-0')
          $('.choice-yes-0').prop('checked', true);
          $('#question-0').hide();
          $('#question-1').show();
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
          $('#question-0').hide();
          $('#question-1').show();
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
          $('#question-1').hide();
          $('#question-2').show();
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
          $('#question-1').hide();
          $('#question-2').show();
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
          $('#question-2').hide();
          $('#question-3').show();
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
          $('#question-2').hide();
          $('#question-3').show();
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
          $('#question-3').hide();
          $('#question-4').show();
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
          $('#question-3').hide();
          $('#question-4').show();
      }
    });
  });

  // 5問目YES選択→6問目へ
  $(function() {
    $( '#draggable-4' ).draggable();
    $( '#droppable-yes-4' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-yes4')
          $('.choice-yes-4').prop('checked', true);
          $('#question-4').hide();
          $('#question-5').show();
      }
    });
  });

  // 5問目NO選択→6問目へ
  $(function() {
    $( '#draggable-4' ).draggable();
    $( '#droppable-no-4' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-no-4')
          $('.choice-no-4').prop('checked', true);
          $('#question-4').hide();
          $('#question-5').show();
      }
    });
  });

  // 6問目YES選択→7問目へ
  $(function() {
    $( '#draggable-5' ).draggable();
    $( '#droppable-yes-5' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-yes5')
          $('.choice-yes-5').prop('checked', true);
          $('#question-5').hide();
          $('#question-6').show();
      }
    });
  });

  // 6問目NO選択→7問目へ
  $(function() {
    $( '#draggable-5' ).draggable();
    $( '#droppable-no-5' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-no-5')
          $('.choice-no-5').prop('checked', true);
          $('#question-5').hide();
          $('#question-6').show();
      }
    });
  });

  // 7問目YES選択→8問目へ
  $(function() {
    $( '#draggable-6' ).draggable();
    $( '#droppable-yes-6' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-yes6')
          $('.choice-yes-6').prop('checked', true);
          $('#question-6').hide();
          $('#question-7').show();
      }
    });
  });

  // 7問目NO選択→8問目へ
  $(function() {
    $( '#draggable-6' ).draggable();
    $( '#droppable-no-6' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-no-6')
          $('.choice-no-6').prop('checked', true);
          $('#question-6').hide();
          $('#question-7').show();
      }
    });
  });



  // 8問目YES選択→submitボタン表示
  $(function() {
    $( '#draggable-7' ).draggable();
    $( '#droppable-yes-7' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-yes-7')
          $('.choice-yes-7').prop('checked', true);
          $('#question-7').hide();
          $('.aiueo').show();
          $('#answer-submit').show();
      }
    });
  });

  // 8問目NO選択→submitボタン表示
  $(function() {
    $( '#draggable-7' ).draggable();
    $( '#droppable-no-7' ).droppable({
      drop: function(e,ui){
        $(this)
          .find('#droppable-no-7')
          $('.choice-no-7').prop('checked', true);
          $('#question-7').hide();
          $('.aiueo').show();
          $('#answer-submit').show();
      }
    });
  });
});

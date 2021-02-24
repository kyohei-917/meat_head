// １問目以外非表示
$(function () {
  $('#question-1').hide();
  $('#question-2').hide();
  $('#question-3').hide();
  $('#question-4').hide();
  $('[name="commit"]:submit').hide();
});

// １問目選択→１問目非表示、２問目表示
$(function() {
  $('.choice-button-0').click( function() {
    $('#question-0').fadeOut();
    $('#question-1').fadeIn();
  });
});

// 2問目選択→2問目非表示、3問目表示
$(function() {
  $('.choice-button-1').click( function() {
    $('#question-1').fadeOut();
    $('#question-2').fadeIn();
  });
});

// 3問目選択→3問目非表示、4問目表示
$(function() {
  $('.choice-button-2').click( function() {
    $('#question-2').fadeOut();
    $('#question-3').fadeIn();
  });
});

// 4問目選択→4問目非表示、5問目表示
$(function() {
  $('.choice-button-3').click( function() {
    $('#question-3').fadeOut();
    $('#question-4').fadeIn();
  });
});

// 5問目選択→5問目非表示、submitボタン表示
$(function() {
  $('.choice-button-4').click( function() {
    $('#question-4').fadeOut();
    $('[name="commit"]:submit').fadeIn();
  });
});
// １問目以外非表示
$(function () {
    $('.text-1').hide();
    $('.yes-1').hide();
    $('.no-1').hide();
    $('.yes-button-1').hide();
    $('.no-button-1').hide();

    $('.text-2').hide();
    $('.yes-2').hide();
    $('.no-2').hide();
    $('.yes-button-2').hide();
    $('.no-button-2').hide();

    $('.text-3').hide();
    $('.yes-3').hide();
    $('.no-3').hide();
    $('.yes-button-3').hide();
    $('.no-button-3').hide();

    $('.text-4').hide();
    $('.yes-4').hide();
    $('.no-4').hide();
    $('.yes-button-4').hide();
    $('.no-button-4').hide();

    $('[name="commit"]:submit').hide();
});

// １問目選択→１問目非表示、２問目表示
$(function() {
  $('[name="answer[answer_details_attributes][0][choice]"]:radio').change( function() {
    $('.text-0').fadeOut();
    $('.yes-0').fadeOut();
    $('.no-0').fadeOut();
    $('.yes-button-0').fadeOut();
    $('.no-button-0').fadeOut();

    $('.text-1').fadeIn();
    $('.yes-1').fadeIn();
    $('.no-1').fadeIn();
    $('.yes-button-1').fadeIn();
    $('.no-button-1').fadeIn();
  });
});

// 2問目選択→2問目非表示、3問目表示
$(function() {
  $('[name="answer[answer_details_attributes][1][choice]"]:radio').change( function() {
    $('.text-1').fadeOut();
    $('.yes-1').fadeOut();
    $('.no-1').fadeOut();
    $('.yes-button-1').fadeOut();
    $('.no-button-1').fadeOut();

    $('.text-2').fadeIn();
    $('.yes-2').fadeIn();
    $('.no-2').fadeIn();
    $('.yes-button-2').fadeIn();
    $('.no-button-2').fadeIn();
  });
});

// 3問目選択→3問目非表示、4問目表示
$(function() {
  $('[name="answer[answer_details_attributes][2][choice]"]:radio').change( function() {
    $('.text-2').fadeOut();
    $('.yes-2').fadeOut();
    $('.no-2').fadeOut();
    $('.yes-button-2').fadeOut();
    $('.no-button-2').fadeOut();

    $('.text-3').fadeIn();
    $('.yes-3').fadeIn();
    $('.no-3').fadeIn();
    $('.yes-button-3').fadeIn();
    $('.no-button-3').fadeIn();
  });
});

// 4問目選択→4問目非表示、5問目表示
$(function() {
  $('[name="answer[answer_details_attributes][3][choice]"]:radio').change( function() {
    $('.text-3').fadeOut();
    $('.yes-3').fadeOut();
    $('.no-3').fadeOut();
    $('.yes-button-3').fadeOut();
    $('.no-button-3').fadeOut();

    $('.text-4').fadeIn();
    $('.yes-4').fadeIn();
    $('.no-4').fadeIn();
    $('.yes-button-4').fadeIn();
    $('.no-button-4').fadeIn();
  });
});

// 5問目選択→5問目非表示、submitボタン表示
$(function() {
  $('[name="answer[answer_details_attributes][4][choice]"]:radio').change( function() {
    $('.text-4').fadeOut();
    $('.yes-4').fadeOut();
    $('.no-4').fadeOut();
    $('.yes-button-4').fadeOut();
    $('.no-button-4').fadeOut();

    $('[name="commit"]:submit').fadeIn();
  });
});

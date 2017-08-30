$(document).ready(function() {
  $(".btn-question-answer").click(function(e) {
    e.preventDefault();
    var link = $(this);
    var panel = link.closest(".panel-body");
    panel.find(".answer-option").hide();

    if(link.data('correct')) {
      panel.find(".correct-answer").fadeIn(800);
    } else {
      panel.find(".incorrect-answer").fadeIn(800);
    }
  });
});

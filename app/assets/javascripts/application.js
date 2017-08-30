//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require smooth-scroll
//= require_tree .

$(document).ready(function() {
  $("a.next-section").click(function(e) {
    // e.preventDefault();
    var clicked_link = $(this);
    // get to the parent .card element
    var parent = clicked_link.parents(".card");
    // get the next card
    var next = parent.next();
    // remove the opacity5 class
    next.animate({opacity: 1});
  });

  $("a.the-answer").click(function(e) {
    e.preventDefault();
    var clicked_link = $(this);
    var parent = clicked_link.parents(".panel-body");
    parent.find(".answer").show();


  });
});

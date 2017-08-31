$(document).ready(function() {
  $(document).on('ajax:complete', '.form-question', function() {
    $(this).find('input[type=submit]').attr("disabled", true);
  })
});

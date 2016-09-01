$(document).ready(function() {
  $('input:text').on('keydown', function(){
    if ($('input:text') === '') {}
    else {
    $('.character').html($(this).val().length);
    $('.word').html($(this).val().split(' ').length);
    }
  });
});

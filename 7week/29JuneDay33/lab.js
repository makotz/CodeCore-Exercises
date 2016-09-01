//Lab1

//Mouseenter toggle highlight

$('.shape').mouseenter(function(){
  $(this).toggleClass('highlight')
});

// Shrink Ray: When any shape is clicked do the following:
// If the shape has the "small" class, hide it.
// If it has the "medium" class, remove the "medium" class and add the "small" class.
// If it has the "large" class, remove the "large" class and add the "medium class."

$('.shape').click(function(){
  if ($(this).hasClass('small')) {
    $(this).hide()
  } else if ($(this).hasClass('medium')) {
    $(this).removeClass('medium')
    $(this).addClass('small')
  } else if ($(this).hasClass('large')) {
    $(this).removeClass('large')
    $(this).addClass('medium')
  }
});


//Lab 2

//1. Prepend a row to the table with the columns "0" and "-"
$("tbody").prepend("<tr><td>0</td><td>-</td></tr>")


// 2. When the form's submit button is clicked, append the text input's current value to the form message.
$('input[type=submit]').click(function(){
  $('#form-message').append($('input[type=text]').val())
});

//3. When "Button 1" is clicked, toggle the green container.
$('#button-1').click(function(){
  $('#green-container').toggle(1000);
})

//4. When "Button 2" is clicked, fade the "Button Message" out
$('#button-2').click(function(){
  $('#button-message').fadeOut(1000);
})

//5. When "Button 3" is clicked, fade the "Button Message" back in.
$('#button-3').click(function(){
  $('#button-message').fadeIn(1000);
})

//6. When "Button 4" is clicked, slide the green container up.
$('#button-4').click(function(){
  $('#green-container').slideUp(1000);
})


//Lab 3
//1. When the 'g' key is pressed, toggle all (g)ray shapes.
$(document).on('keypress', function(){
  var charCode = event.which;
  var key = String.fromCharCode(charCode);
  if (key === 'g') {
    $('.shape.grey').toggle(1000)
  }
});

//2. When the spacebar key is pressed, append a small blue circle to the green container.
$(document).on('keypress', function(event){
  var charCode = event.which;
  var key = String.fromCharCode(charCode);
  console.log(key);
  if (key === ' ') {
    $('#green-container').append("<div class = 'shape small circle blue'></div>")
  }
});

//3. Make the "Form Message" show the number of characters remaining (14 characters maximum) as you type in the text input. (e.g. "3 characters remaining").

$('input:text').on('keyup', function(event){
  $('#form-message').html(14-$(this).val().length+ " characters remaining.");
});


//Lab 4
// Shape Destroyer: The user can enter a color into the input field. When they click "submit":
// • All shapes matching the given color should be removed.
// • If they enter an invalid color show them an alert message telling them this.
// • Clear the input field.

  $('form').on('submit', function(){
    var color = $('input:text').val();
      if ($('div').hasClass(color)) {
        $(".shape."+color).remove();
      }
      else {
        alert('invalid color!');
      };
    $('input:text').val('');
  });


//Lab
- When the form is submitted, clear the text in the input field.
- As you type in the text input, change the "Form Message" to be the same as what you type.
- As you type in the text input, change the "Form Message" to be the REVERSE of what you type.
- Set a delegated click handler on the orange container so that red shapes are removed when you click them.

$('form').on('submit', function(){
  $('input:text').val('');
});

$('input:text').on('keyup', function(event){
  $('#form-message').html($(this).val());
});

$('input:text').on('keyup', function(event){
  var value = $(this).val().split('').reverse().join('');
  $('#form-message').html(value);
});

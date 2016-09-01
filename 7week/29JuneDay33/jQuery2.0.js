// ************** ATTRIBUTE SELECTORS **************
// // Select all the links with any "href" attribute
$('a[href]');
// // Select all the links to "http://www.facebook.com"
$('a[href="http://www.facebook.com"]');

// var word = "Jacob";
// var word = 'Jacob';
// var word = "Jacob's Bedroom";
// var word = '"I have a dream."';

// // Highlight all the links to any ".com" URL by setting their class to "highlight"
$('a[href*=".com"]').attr('class', 'highlight');

// // Hide all the links NOT to "http://www.google.com"
$('a[href!="http://www.google.com"]').hide();

// makoto's question
$('a').not('[href*="google"]').hide();

// ************** PSEUDO SELECTORS **************
// // Select the first table row
$('tr:first-child');
$('table tr').first();
$('tbody > :first-child');

// // Select the last table row
$('tr:last-child');

// // Remove the even-numbered shapes from the green-container
$('#green-container .shape').filter(':even').remove();
$('#green-container :even').remove();
$('#green-container .shape:even').remove();

// // Highlight the odd rows on the table
$('tr:odd').attr('class','highlight');
$('table tr').filter(':odd').attr('class','highlight');
$('table tr:odd').attr('class','highlight');
// $('table :odd').attr('class','highlight'); // recursive

// // Hide the last shape in every container
$('.container :last-child').hide();



// ************** ATTRIBUTES **************
// // Add the "highlight" class to all links
$('a').attr('class', 'highlight');
$('a').attr('class', 'blue'); // overwrite
$('a').attr('class', 'highlight blue'); // not overwrite
$('a').addClass('highlight');
$('a').addClass('blue');

// // Remove the 'highlight' class from all links
$('a').removeClass('higlight');

// // Toggle the "highlight" class on all links. Toggle again.
$('a').toggleClass('highlight');

// // Add the "my-own-class" class to the "body" element. Then vertify it is there using "hasClass"
$('body').addClass('my-own-class');
$('body').hasClass('my-own-class'); //boolean returned

// // When any container is clicked, add the "hightlight" class to all the shapes in that container.
$('.container').on('click', function(){
  $(this).children('.shape').addClass('highlight');
});

// When your mouse enters a shape, toggle the "highlight" class
$('.shape').on('mouseenter', function(){
  $(this).toggleClass('highlight');
});

// chaining
$('.shape.blue').removeClass('blue').addClass('red');
$('.shape.small.red.circle').removeClass('small red circle').addClass('large grey square');

// val
// $('a[href="http://www.facebook.com"]');
// $('input[type="text"]').val("hello world");
// $('input:text')

// ************** VAL **************
// Set the value of the text field in the form to "Hello World"
$('input[type="text"]').attr('value','Hello World');
$('input[type="text"]').val('Hello World');
$('input:text').val('Hello World');

// Get the value of the text field in the form
$('input:text').val();

// When the form's "Submit" button is clicked, change the contents of "Form Message" to be the text field's value
$('input:submit').click(function(){
  $('#form-message').html($('input:text').val());
});

$('input[type="submit"]').on('click', function(){
  $('#form-message').html($('input[type="text"]').val());
});

// apprend + prepend

$('table').append('<tr></tr>'); // add a row to the end of our table

$('body').prepend('<h1>This is my forgotten header</h1>'); //adds an h1 to the start of our body

$('body').append('<p>Appended</p>');
$('body').prepend('<p>Prepended</p>');
$('ul').append('<li><a href="http://www.amazon.com">Amazon.com</a></li>');




// traversal
$('body').find('.red');
$('body').find('.red').next();
$('body').find('.red').prev();

// exercises
$('#orange-container').find('.red');
$('.small.red.circle').prev().remove('.shape');
$('body').find('.small.red.circle').prev().remove('.shape');
$('.grey.shape').next().hide();
$('#green-container').find('.circle').addClass('black');

//EFFECTS
$('.shape').fadeIn(500);
$('#green-container').toggle(500);
$('#green-container').fadeOut(500);

//eyPresssed

$(document).on('keypress', function(event){

  var charCode = event.which;
  console.log("charCode:"+ charCode);
  var key = String.fromCharCode(charCode);
  console.log("key:"+ key);

  if (key === 'b') {
    $('.shape.blue').toggle(1000)
  } else if (key === 'r') {
    $('.shape.red').toggle(1000)
  } else if (key === 'k') {
    $('.shape.').toggle(1000)
  }
});

var keys = "";

// password listener
$('input:text').on('keyup', function(event){
  $('#form-message').html($(this).val().length);
});

//reverse
$('input:text').on('keyup', function(event){
  var value = $(this).val().split('').reverse().join('');
  $('#form-message').html(value);
});

$('input:text').on('keyup', function(event){
  var charleft = 140 - $(this).val().split('').length
  $('#form-message').html("Character left: "+charleft);
});


// Clear the content of the submit
$('form').on('submit', function(){
  console.log("Submitted...");
  $('input[type=text]').val('')
});

$('#orange-container').on('click', '.red.shape', function() {
  $(this).remove();
});

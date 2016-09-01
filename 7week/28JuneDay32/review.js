var isEven = function(x) {
  return x % 2 === 0;
}
var isOdd = function(x) {
  return x % 2 != 0;
}

console.log([1,2,3,4].filter(isOdd));

//Wikipedia

for (var i=0; i<document.links.length; i++) {
  document.links[i].style.color = "red";
}

//Lab Exercises

//EXERCISES 1/1

//1. Select all shapes
$('.shape');

// 2. Select all black shapes
$('.black.shape');

// 3. Count the number of shapes
$('.shape').length;

// 4. Count the number of black shapes
$('.black.shape').length;

// 5. Count the number of black shapes AND blue shapes
$('.black.shape, .blue.shape');

// 6. Select all h1 tags
$('h1');

// 7. Select all small circles
$('.small.circle');

// EXERCISES 2/2
// 1. Select all red shapes inside the orange container
$('#orange-container .shape.red');

// 2. Select all medium and small shapes inside the green
// container
$('#green-container .medium, #green-container .small');

// 3. Select all shapes inside any container
$('.container .shape');

// 4. Select all link tags
$('a');

// 5. Select all the link tags inside an "li" tag
$('li a');

// 6. Count the number of small blue circles
$('.small.circle.blue').length;

// EXERCISES

// 1. Get the "href" attribute of the first link on the page
$('a').eq(0).attr('href');
// 2. Set the "href" attribute of all links on the page to "http:// www.codecore.ca". Try clicking one.
$('a').attr('href', 'http://www.codecore.ca');
// 3. Set the "class" attribute of all links to "highlight"
$('a').attr('class', 'highlight');
// 4. Set the "class" attributes of all shapes to "highlight". What happened?
$('.shape').attr('class', 'highlight');

// 1. Remove all blue shapes
$('.blue.shape').remove();
// 2. Remove all shapes in the orange container
$('#orange-container .shape').remove();
// 3. Remove all small red circles
$('.small.red.circle').remove();
// 4. Get the html contents of the reset button.
$('#reset').html();
// 5. Try to get the html contents of all links. What happened?
$('a').html();
// 6. Change the reset button to read "Launch Missiles!"
$('#reset').attr('value', 'Launch Missiles');
$('#reset').html('Launch Missiles');
// 7. Change all the H1 tags to read "[Your Name] is Cool!"
var name = "Angela";
$('h1').html(name + ' is cool!');

// EXERCISES
// 1. Select all the shapes in the purple container using "children"
$("#purple-container").children(".shape");
// 2. Select the green container using "parent"
$(".red.diamond").parent();
$(".shape").parent("#green-container");
$('.shape').parent();
// 3. Select all the "li" tags that contain a link.
$('li a').parent();
$('a').parent('li');

// EXERCISES
// 1. Hide the purple container
$("#purple-container").hide();
// 2. Show the purple container again
$("#purple-container").show();
// 3. Hide all the links.
$('a').hide();
// 4. Show all the links again.
$('a').show();

// event example
<span>Click Me</span>

// $(selector).on(event, handlerFunction);
$('span').on('click', function() {
  console.log('clicked');
});
$('.blue.circle').on('mouseenter', function() {
  console.log('Goaway');
});
$('.tr').on('mouseenter', function() {
  ('.tr')attr('.highlight');
});


// $(selector).on(event, handlerFunction);
$('span').on('click', function() {
  console.log('clicked');
});

//makato
$('.shape').on('click', function () {console.log("shape clicked")})

// eric
$('.blue.circle').on('mouseenter', function(){
  console.log('Blue Circle: Go Away!')
});

// nour
$('tr').on('mouseenter', function() {
  console.log('highlight')
});

//wilson
$('tr').on('mouseenter', function() {
  $(this).attr('class','highlight');
});


$(button 1).on('click', function() {
  $('.shape').remove()
});

$('.shape').on('click', function(){
  console.log($(this).attr('class'))
})

$('.shape').on('click', function(){
  $(this).hide())
})

$('.shape').on('click', function(){
console.log($(this).remove($(this).parent('.container')));
});

//

$('a').on('mouseover', function(){
  console.log("Your mouse entered a link to: "+$(this).attr('href'))
});

$('.button').on('click', function(){
  $('#button-message').html("Your mouse entered a link to: "+$(this).attr('href'))
});

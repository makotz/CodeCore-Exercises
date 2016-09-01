$(document).click(function(){
  var array = [];
  $('h2').each(function() {
    var h2tag = $(this).text();
    array.push(h2tag)
  });
  $('h2').each(function(){
    var item = array[Math.floor(Math.random()*array.length)];
    $(this).html(item)
  });
});

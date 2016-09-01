// promptAndPlay
//
// Prompts the user to enter a song.
// Plays the entered song.
// Repeats when the song is complete.
//


var promptAndPlay = function() {
  var songString = prompt("Welcome to JukeBox!\nEnter a song to play:");
  var song = parseSong(songString);
  playSong(song, 500, resetbutton);
};


var resetbutton = function() {
  $('.play-button').html('Play');
  $('.play-button').attr('disabled', false);
}

var Song_Queue = []
$('input:submit').click(function(event){
  event.preventDefault();
  var inputValue = $('input:text').val();
  Song_Queue.push(inputValue);
  $('input:text').val("");
  console.log(Song_Queue)
});

$('.play-button').on('click', function () {
  $('.play-button').html('Playing...');
  $('.play-button').attr('disabled', true);

});

// Get things going.

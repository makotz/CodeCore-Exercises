
// parseNote("C#*2"); //=> { pitch: 'C#', beats: 2}



document.addEventListener("DOMContentLoaded", function(){

//   $('.play-button').on('click', function() {var input = prompt("Give me a note!")
// });
  function parseNote(note) {
    var hash = {}
    var originalbeat = 1
    if(note.indexOf("*")>= 0){
    note = note.split("*")
    hash.pitch = note[0]
    hash.beats = note[1]
    return hash
    }
    else {
      hash.pitch = note
      hash.beats = originalbeat
      return hash
    }
  }


// console.log(parseNote("C#"))


function parseSong(song) {
    var noteArray = []
    var notes = song.split(' ')
    for (var i = 0; i < notes.length; i++) {
      noteArray.push(parseNote(notes[i]))
    }
    return noteArray
};

var input = prompt("Give me a note!")
// });
var notes = parseSong(input)
//
//
playSong(notes, 400);
});

// var onComplete = function () {
//    console.log('Song finished playing');
// }
// playSong(song, bpm, onComplete);
// console.log(parseSong("Ab B")); // =>; [{pitch: 'Ab', beats: 1}, {pitch: 'B', beats: 1}]

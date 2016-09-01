var BASE_URL = "http://localhost:3000/api/v1/";
var API_KEY = "sbBNkzMmUcGY9o6Lp8uucw"


$(document).ready(function(){

  $.ajax({
    method: "GET",
    url:    BASE_URL + "questions.json",
    error: function(){
      alert("can't load questions");
    },
    success: function(data){
      var template = $('#question-template').html();
      Mustache.parse(template);

      for(var i = 0; i < data.length; i++) {
        var question = data[i];
        var rendered = Mustache.render(template, question);
        $("#questions").prepend(rendered);
      }
    }
  });

  $("#questions").on("click", ".question",function(){
    console.log('question clicked: ' + $(this).data("id"));
    $.ajax({
      method: "GET",
      url:    BASE_URL + "questions/" + $(this).data("id") + ".json",
      error: function(){
        alert("Error loading question");
      },
      success: function(data){

        var template = $('#question-details-template').html();
        Mustache.parse(template);
        var rendered = Mustache.render(template, data.question);
        $("#question-details").html(rendered);
        $("#questions").hide();

        var answers = data.question.answers;
        template = $('#answer-template').html();
        Mustache.parse(template);
        for(var i = 0; i< answers.length; i++) {
          var rendered = Mustache.render(template, answers[i]);
          $("#answers").prepend(rendered);
        }

      }
    });
  });

  $("#question-details").on("submit", "#answer-form", function(event){
    var body= $("#body").val();
    $.ajax({
      method: "POST",
      url: BASE_URL + $(this).data("question-id") + "/answers",
      data: {api_key: API_KEY, answer: {body: body}},
      error: function(){
        console.log("Error");
      },
      success: function(){
        var template = $('#answer-template').html();
        var rendered = Mustache.render(template, {body: body});
        $("#answers").prepend(rendered);
        $("#body").val()
      }
    })
    event.preventDefault();
  })

});

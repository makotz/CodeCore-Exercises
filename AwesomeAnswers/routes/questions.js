var express  = require("express");
var router   = express.Router();
var Question = require("../models/question");

router.get("/", function(request, response, next){
  response.end("<h1>All Questions</h1>");
});

router.get("/new", function(req, res){
  res.render("questions/new", {errors: {}, question: {}})
});

router.post("/", function(req, res){
  var question = new Question({title: req.body.title, body: req.body.body});
  question.save(function(err, question){
    if(err){
      console.log(err);
      res.render("questions/new", {errors: err.errors, question: req.body});
    } else {
      res.redirect("/questions/" + question._id);
    }
  });
});

router.get("/:id", function(req, res, next){
  Question.findOne({_id: req.params.id}, function(err, question) {
    if(err) {
      err.status = 404;
      next(err, req, res);
    } else {
      res.render("questions/show", {question: question});
    }
  });
});

module.exports = router;

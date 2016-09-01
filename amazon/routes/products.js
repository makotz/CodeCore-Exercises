var express  = require("express");
var router   = express.Router();
var Product = require("../models/product");


router.get("/new", function(req, res){
  res.render("products/new", {errors: {}, question: {}})
});

router.post("/", function(req, res, next){
  var product = new Product({title: req.body.title, body: req.body.body});
  product.save(function(err, product){
    if(err){
      res.render("products/new", {errors: err.errors, product: req.body});
    } else {
      res.redirect("/products/" + product._id);
    }
  });
});

router.get("/", function(req, res, next){
  Product.find({}, function(err, products) {
    if(err) {
      err.status = 404;
      next(err, req, res);
    } else {
      res.render("products/index", {products: products})
    }
  })
});



router.get("/:id", function(req, res, next){
  Product.findOne({_id: req.params.id}, function(err, product) {
    if(err) {
      err.status = 404;
      next(err, req, res);
    } else {
      res.render("products/show", {product: product});
    }
  });
});

router.delete("/:id", function(req, res, next) {
  var product = Product.findOne({_id: req.params.id})
  product.remove(function(err, product) {
    if(err){
      err.status = 404;
      next(err, req, res);
    } else {
      res.redirect("/products");
    }
    });
  });

router.get("/:id/edit", function(req, res, next) {
  Product.findOne({_id: req.params.id} , function(err, product) {
    if(err){
      res.render("products/new")
    } else {
      res.render("products/edit")
    }
  });
});

module.exports = router;

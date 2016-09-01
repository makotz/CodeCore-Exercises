var mongoose = require("mongoose");
var Schema = mongoose.Schema;

var ProductSchema = new Schema({
  title: {type: String, required: true},
  body: {type: String}
});

var Product = mongoose.model("Product", ProductSchema);

module.exports = Product;

var BASE_URL = "http://localhost:3000/";

$(document).ready(function() {

  $.ajax({
    method: "GET",
    url: BASE_URL + "products.json",
    error: function() {
      alert("can't load products");
    },
    success: function(data){
      var template = $('#product-template').html();
      Mustache.parse(template);

      for(var i=0; i < data.length; i++) {
        var product = data[i];
        var rendered = Mustache.render(template, product);
        $("#products").prepend(rendered);
      }
    }
  });

  $("#products").on("click", ".product", function(){
    console.log('product clicked: ' + $(this).data("id"));

    $.ajax({
      method: "GET",
      url: BASE_URL + "products/" + $(this).data("id") + ".json",
      error: function(data){
        alert("Error loading product");
      },
      success: function(data) {

        var template = $('#product-details-template').html();
        Mustache.parse(template);
        var rendered = Mustache.render(template, data.product);
        $("#products").fadeOut(1000, function() {$("#product-details").html(rendered).hide().fadeIn(1000);
      });
      }
    });
  });
});

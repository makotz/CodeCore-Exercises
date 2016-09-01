.ajax({
  url: "http://api.openweathermap.org/data/2.5/weather?APPID=8453294db1ca526ff526923f91c1e1cb&lat=49.2822586&lon=-123.1084793000000",
  method: "GET",
  success: function(data) {
    console.log(data.body)
  },
  error: function(){
    console.log("error")
  }
});

var a = function(b) {

}

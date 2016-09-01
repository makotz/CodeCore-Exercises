var net = require('net');

var client = net.Socket();

client.on("data", function (data) {
  console.log("Data recieved from server: "+ data);
});

client.connect(5000, "127.0.0.1", function(){
  client.write("Hello World");
});

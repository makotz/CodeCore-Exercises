var net = require("net"); // Node module that helps us create TCP server
var server2 = net.createServer(function(socket){
  socket.on("data", function(data){
    console.log("Data receieved: "+ data);
    socket.write("Hello " + capitalize(data.toString()));
  })
});

var capitalize = function(name){
  return name[0].toUpperCase() + name.slice(1);
}

server2.listen(5000, "127.0.0.1");
console.log("Server is running on IP address 127.0.0..1 and Port 5000")

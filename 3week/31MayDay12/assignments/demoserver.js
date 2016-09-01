var net = require('net')

var PORT = 8080;
var IP = "127.0.0.1";

console.log("Server started on " + IP + " :"+PORT)
var server = net.createServer(function (socket) {
  socket.on('data', function (data) {
    console.log("Client says: "+data.toString())
    socket.write(data.toString().toUpperCase())
  })
})
// The net.createServer will start the function (socket) i
// .on means taht whenever the socket gets 'data' run function (data)

server.listen(PORT, IP)
// .listen makes the server listeneing at PORT and IP

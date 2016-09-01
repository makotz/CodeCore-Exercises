var net = require('net')

var PORT = 8080
var HOST = '127.0.0.1'

// This initializes the server object
// https://nodejs.org/api/net.html#net_net_createserver_options_connectionlistenerc
var server = net.createServer(function (socket) {
  // Setup a listener on the data event
  // When the socket receives new data from the client,
  // the function passed as a second argument will execute
  // with that data object in its scope
  socket.on('data', function (data) {
    console.log('Data received:' + data.toString())

    // We send data to
    // https://nodejs.org/api/net.html#net_socket_write_data_encoding_callback
    socket.write(data.toString().split("").reverse().join(""))
  })
})

// This starts the server initialized above
server.listen(PORT, HOST)
console.log('Server listenning on ' + HOST + ':' + PORT + '...')

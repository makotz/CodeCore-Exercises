const readline = require('readline')
const net = require('net')

// Configuration of server we want to connect to
const PORT = 8080
const HOST = '127.0.0.1'

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
})

// Set up connection between server in server.js
// and this client
// https://nodejs.org/api/net.html#net_net_createconnection_options_connectlistener
const socket = net.createConnection({port: PORT, host: HOST})

socket.on('data', function (data) {
  console.log('The reverse is ' + data.toString())
})

// The following will ask the user for his name,
// then it will call the function with the name
// argument when the user presses enter
rl.question('What is your input?', function (name) {
  socket.write(name)
  socket.end()
  rl.close()
})

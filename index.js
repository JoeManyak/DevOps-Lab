const http = require('http');
const port = 80

const requestListener = function (req, res) {
    res.writeHead(200);
    res.end('I love Dumplings! :)');
}

console.log("Starting server at port "+port)
const server = http.createServer(requestListener);
server.listen(port);
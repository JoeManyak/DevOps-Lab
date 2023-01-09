const http = require('http');
const url = require('url')
const port = 80

const requestListener = function (req, res) {
    res.writeHead(200);
    let path = url.parse(req.url).pathname
    if (path === "/what-is-love") {
        res.end("baby don't hurt me")
        return
    }

    res.end('I love Dumplings! :)');
}

console.log("Starting server at port " + port)
const server = http.createServer(requestListener);
server.listen(port);
const http = require('http');
const os = require('os');

const server = http.createServer((req, res) => {
  const name = process.env.NAME || 'Guest';
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end(`Goodbye, ${name}!\n`);
});

const port = 3000;
server.listen(port, '0.0.0.0', () => {
  console.log(`Server running at http://0.0.0.0:${port}/`);
});


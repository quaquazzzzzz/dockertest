import http.server
import socketserver
import os

class MyHandler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        name = os.getenv('NAME', 'Guest')
        self.send_response(200)
        self.send_header('Content-type', 'text/plain')
        self.end_headers()
        self.wfile.write(f'Hello, {name}!'.encode())

if __name__ == '__main__':
    port = 8000
    httpd = socketserver.TCPServer(('', port), MyHandler)
    print(f'Serving on port {port}')
    httpd.serve_forever()

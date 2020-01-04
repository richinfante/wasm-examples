try:
    import SimpleHTTPServer
except ImportError:
    from http import server as SimpleHTTPServer

try:
    import SocketServer
except ImportError:
    import socketserver as SocketServer

PORT = 8888


# Simple HTTP Handler
class Handler(SimpleHTTPServer.SimpleHTTPRequestHandler):
    pass


# We need this since browsers won't load the file without the proper mime type!
Handler.extensions_map['.wasm'] = 'application/wasm'

httpd = SocketServer.TCPServer(("", PORT), Handler)

print("serving at port", PORT)
httpd.serve_forever()
from http.server import BaseHTTPRequestHandler, HTTPServer
import sys

hostName = "localhost"
serverPort = sys.argv[1]
file = sys.argv[2]

if __name__ == "__main__":
    webServer = HTTPServer((hostName, serverPort), MyServer)
    print("Server started http://%s:%s" % (hostName, serverPort))

    try:
        webServer.serve_forever()
    except KeyboardInterrupt:
        pass

    webServer.server_close()
    print("Server stopped.")

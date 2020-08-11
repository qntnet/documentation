# python3 localserver.py
# http://localhost:8880/documentation/en/ http://localhost:8880/documentation/ru/

import http.server

server_address = ("", 8880)

request_mapping = {
    '/documentation/en/': './en/build/html/',
    '/documentation/ru/': './ru/build/html/',
}


class MyRequestHandler(http.server.SimpleHTTPRequestHandler):
    def translate_path(self, path):
        for k in request_mapping.keys():
            if path.startswith(k):
                return request_mapping[k] + path[len(k):]
        return ""


httpd = http.server.HTTPServer(server_address, MyRequestHandler)
httpd.serve_forever()

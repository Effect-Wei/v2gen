#!/usr/bin/python3
import socket
import sys

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

host = socket.gethostname()
port = 80

server.bind((host, port))
server.listen(10)

while True:
    try:
        client, addr = server.accept()
    except KeyboardInterrupt:
        exit()
    msg = client.recv(65536)
    print(msg.decode('utf-8'))
    client.close()

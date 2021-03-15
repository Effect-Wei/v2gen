#!/usr/bin/python3
import socket
import sys

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

host = socket.gethostname()
port = 80

msg = input()
client.connect((host, port))
client.send(msg.encode('utf-8'))
client.close()

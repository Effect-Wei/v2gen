#!/usr/bin/python3.7

import cgi
import cgitb 

# 创建 FieldStorage 的实例化
form = cgi.FieldStorage() 

# 获取数据
server_name = form.getvalue('name')
server_link = form.getvalue('link')

print ("Content-type:text/html")
print ()
print (name, " ", link)

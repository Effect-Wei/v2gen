#!/usr/bin/env python3

import cgi
import cgitb 

# 创建 FieldStorage 的实例化
form = cgi.FieldStorage() 

# 获取数据
name = form.getvalue('name')
link = form.getvalue('link')

print ("Content-Type: text/plain")
print ()
print (name, " ", link)

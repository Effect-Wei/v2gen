#!/usr/bin/env python3

import cgi
import cgitb 

form = cgi.FieldStorage() 
name = form.getvalue('name')
link = form.getvalue('link')

print ("Content-Type: text/plain")
print ()
print (name, " ", link)

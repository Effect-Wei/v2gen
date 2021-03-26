FROM httpd:latest

ADD configure.sh /configure.sh
ADD generator.py /usr/local/apache2/cgi-bin/generator.py
ADD httpd.conf /usr/local/apache2/conf/httpd.conf

RUN chmod +x /configure.sh && chmod -R 755 /usr/local/apache2/cgi-bin && apt update && apt install nano python3 -y && sed -i '1c#!/usr/bin/perl' /usr/local/apache2/cgi-bin/printenv

CMD /configure.sh

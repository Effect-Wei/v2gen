FROM httpd:latest

ADD configure.sh /configure.sh
ADD generator.py /usr/local/apache2/cgi-bin/generator.py
ADD httpd.conf /usr/local/apache2/conf/httpd.conf

RUN chmod +x /configure.sh

CMD /configure.sh

FROM effectwei/nginx-fcgiwrap:1.0

ADD configure.sh /configure.sh
ADD generator.py /var/cgi-bin/generator.py
ADD v2gen.conf /etc/nginx/conf.d/v2gen.conf

RUN chmod +x /configure.sh && rm /etc/nginx/sites-enabled/default

CMD /bin/bash /configure.sh

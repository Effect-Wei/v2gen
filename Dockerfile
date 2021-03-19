FROM effectwei/nginx-fcgiwrap:1.0

ADD configure.sh /configure.sh

RUN chmod +x /configure.sh

CMD /configure.sh

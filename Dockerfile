FROM ubuntu:20.04

RUN apt-get update && apt-get install -y vim apache2
COPY index.html /var/www/html/
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]

RUN git clone https://github.com/log2timeline/dftimewolf.git && cd dftimewolf
RUN pip install -r requirements.txt
RUN pip install -e .
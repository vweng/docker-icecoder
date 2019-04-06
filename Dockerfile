FROM nimmis/apache-php5

MAINTAINER nimmis <kjell.havneskold@gmail.com>

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive


RUN wget https://github.com/icecoder/ICEcoder/archive/v6.0.zip -O /icecoder.zip && \
unzip -q /icecoder.zip -d /root/ && \
mv /root/ICE* /var/www/html/icecoder && \
chown -R www-data.www-data /var/www/html/icecoder && \
rm -f /icecoder.zip 

RUN groupmod -g 11533 www-data

FROM phusion/baseimage

RUN apt-get update
RUN apt-get install -y apt wget unzip mysql-client

RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN echo "yes" | apt-get install -y oracle-java8-installer

RUN wget https://bitbucket.org/wisemapping/wisemapping-open-source/downloads/wisemapping-v4.0.3.zip
RUN unzip wisemapping-v4.0.3.zip -d /
RUN mv wisemapping-v4.0.3/ /wisemapping/
RUN rm /wisemapping-v4.0.3.zip

ADD init-sql.sh /wisemapping/init-sql.sh
RUN chmod +x /wisemapping/init-sql.sh
ADD wisemapping.conf /wisemapping/webapps/wisemapping/WEB-INF/app.properties
ADD create-database.sql /wisemapping/config/database/mysql/create-database.sql

RUN mkdir /etc/service/wisemapping
ADD services/wisemapping.sh /etc/service/wisemapping/run
RUN chmod +x /etc/service/wisemapping/run

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

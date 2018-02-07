FROM tomcat:8-jre8

MAINTAINER mayth <chimeaquas [at] hotmail.com>

# commits graph plugin requires git
RUN apt-get update && \
        apt-get install -y --no-install-recommends git && \
        rm -rf /var/lib/apt/lists/*

ENV GITBUCKET_HOME /var/gitbucket

RUN mkdir /var/gitbucket
RUN mkdir /var/gitbucket/plugins

RUN rm -rf /usr/local/tomcat/webapps/ROOT
ADD https://github.com/gitbucket/gitbucket/releases/download/4.20.0/gitbucket.war /usr/local/tomcat/webapps/ROOT.war

VOLUME /var/gitbucket

EXPOSE 8080 29418

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]

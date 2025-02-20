FROM maven:3.8.5-amazoncorretto-8
COPY . /usr/src/app
WORKDIR /usr/src/app


# Defaults that work with 
# https://registry.hub.docker.com/u/durdn/atlassian-crowd/dockerfile/
ENV CROWD_APP_NAME crowd-ldap-server
ENV CROWD_APP_PW crowd-ldap-server
ENV CROWD_APP_URL http://crowd:8095/
ENV CROWD_URL http://crowd:8095/crowd

EXPOSE 10389

CMD ["/usr/src/app/run.sh"]

# more info https://registry.hub.docker.com/_/tomcat/
FROM tomcat:7.0.63-jre8

RUN rm -fr /usr/local/tomcat/webapps/*
# Obtain cloudopting.war from https://github.com/CloudOpting/cloudopting-manager using the script build-war.sh
ADD ./cloudopting.war /usr/local/tomcat/webapps/ROOT.war

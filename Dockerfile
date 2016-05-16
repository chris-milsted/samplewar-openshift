FROM jboss-webserver-3/webserver30-tomcat8-openshift
EXPOSE 8080 
COPY ["dCloud Quote Builder/dqb.war","/opt/webserver/webapps"]

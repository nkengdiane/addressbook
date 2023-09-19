FROM bitnami/tomcat:9.0
COPY target/addressbook-2.0.war /app/addressbook.war 

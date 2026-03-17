# Use Tomcat base image
FROM tomcat:9.0-jdk11

# Remove default webapps and copy our WAR
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/docker-java-sample-webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

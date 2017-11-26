# Pull base image
FROM tomcat:8.5

# Optional: Delete existing webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy war from maven to tomcat webapp
COPY maven/ /usr/local/tomcat/webapps/

#CMD ["catalina.sh", "run"]
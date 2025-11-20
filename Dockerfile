# Use Tomcat 10 (supports jakarta.servlet)
FROM tomcat:10.1-jdk17

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat
COPY target/employee-managements.war /usr/local/tomcat/webapps/employee-managements.war

# Expose port 8080
EXPOSE 8080

# Start tomcat
CMD ["catalina.sh", "run"]

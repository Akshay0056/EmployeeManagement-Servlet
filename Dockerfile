# ------------ STAGE 1: Build WAR using Maven -------------
FROM maven:3.9.3-eclipse-temurin-17 AS build

WORKDIR /app

# Copy pom.xml
COPY pom.xml .

# Copy source code
COPY src ./src

# Package the WAR (skip tests)
RUN mvn -B clean package -DskipTests



# ------------ STAGE 2: Run on Tomcat 10 ------------------
FROM tomcat:10.1-jdk17

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR from build stage to Tomcat AS ROOT.war
COPY --from=build /app/target/employee-managements.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

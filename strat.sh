 #!/bin/bash

echo "Building project..."
mvn clean package -DskipTests

echo "Downloading Tomcat..."
wget https://archive.apache.org/dist/tomcat/tomcat-10/v10.1.20/bin/apache-tomcat-10.1.20.tar.gz

echo "Extracting Tomcat..."
tar -xvzf apache-tomcat-10.1.20.tar.gz
mv apache-tomcat-10.1.20 tomcat

echo "Deploying WAR..."
cp target/employee-managements.war tomcat/webapps/

echo "Starting Tomcat..."
./tomcat/bin/catalina.sh run

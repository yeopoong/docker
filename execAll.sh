#!/bin/sh
docker exec tomcat su - tomcat -c "/home/tomcat/tomcat8/bin/startup.sh"
docker exec sonar "/usr/local/sonarqube-5.5/bin/linux-x86-64/sonar.sh start"
docker exec nexus su - nexus -c "./nexus/bin/nexus start"
docker exec jenkins su - jenkins -c "java -jar jenkins.war --httpPort=5000"

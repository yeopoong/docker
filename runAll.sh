docker run -itd --name tomcat -p 8080:8080 tomcat
docker run -itd --name sonar -p 9000:9000 sonar
docker run -itd --name nexus -p 8081:8081 nexus
docker run -itd --name jenkins -p 5000:5000 --link tomcat:tomcat --link sonar:sonar --link nexus:nexus jenkins

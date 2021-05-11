#FROM openjdk:8-jdk-alpine
#VOLUME /tmp
#ADD target/devOpsDemo-0.0.1-SNAPSHOT.jar app.jar
#
#ENTRYPOINT ["java","-jar","app.jar"]
#
#EXPOSE 2222

#FROM tomcat:latest
#ADD target/*.war /usr/local/tomcat/webapps/
#EXPOSE 8080
#CMD ["catalina.sh", "run"]

FROM java:8
ADD /target/SpringBootMavenExample-1.3.5.RELEASE.war infrrd.war
ENTRYPOINT ["java", "-jar", "/infrrd.war"]
FROM openjdk:11.0.4-jre-slim-buster
VOLUME "/tmp"
EXPOSE 8081
ADD target/springwebapp-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar", "/app.jar"]
FROM maven:3.6.1-jdk-11-slim AS build
COPY src /workspace/src
COPY pom.xml /workspace
WORKDIR /workspace
RUN mvn clean install

FROM openjdk:11.0.4-jre-slim-buster
VOLUME "/tmp"
EXPOSE 8081
COPY --from=build /workspace/target/practice-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar", "app.jar"]
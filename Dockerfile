# Dockerfile para el servidor Eureka con Java 17
FROM maven:3.9.6-eclipse-temurin-21 AS build
COPY . .
RUN mvn clean package
FROM openjdk:17-jdk-slim
VOLUME /tmp
COPY target/eureka-microservice-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]


# Dockerfile para el servidor Eureka con Java 17
FROM maven:3.9.6-eclipse-temurin-21 AS build
COPY . .
RUN mvn clean package
FROM openjdk:17-jdk-slim
ARG JAR_FILE=target/eureka-microservice-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} eureka-microservice.jar
EXPOSE 8761
ENTRYPOINT ["java", "-jar", "eureka-microservice.jar"]


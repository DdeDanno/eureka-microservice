# Dockerfile para el servidor Eureka con Java 17
FROM openjdk:17-jdk-slim
ARG JAR_FILE=target/eureka-microservice-0.0.1.jar
COPY ${JAR_FILE} eureka_microservice.jar
EXPOSE 8761
ENTRYPOINT ["java", "-jar", "eureka_microservice.jar"]


# Dockerfile para el servidor Eureka con Java 17
FROM openjdk:17-jdk-slim
COPY target/eureka-microservice-0.0.1-SNAPSHOT.jar eureka-server.jar
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]
EXPOSE 8761

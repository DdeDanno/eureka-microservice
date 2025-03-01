# Dockerfile para el servidor Eureka con Java 17
FROM openjdk:17-jdk-slim
COPY target/eureka-server.jar eureka-server.jar
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]
EXPOSE 8761

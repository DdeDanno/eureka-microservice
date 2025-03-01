FROM openjdk:17-jdk-slim

# Copia el archivo .jar después de compilarlo
WORKDIR /app
COPY . /app

# Instala dependencias y compila el proyecto
RUN mvn clean install

# Copia el archivo .jar generado
COPY target/eureka-microservice-0.0.1-SNAPSHOT.jar eureka-server.jar

ENTRYPOINT ["java", "-jar", "eureka-server.jar"]

EXPOSE 8081

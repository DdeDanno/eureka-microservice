FROM openjdk:17-jdk-slim

# Copia el código fuente
WORKDIR /app
COPY . /app

# Limpia y construye el proyecto con Maven
RUN mvn clean install -Dmaven.repo.local=/tmp/maven-repo

# Copia el archivo .jar generado
COPY target/eureka-microservice-0.0.1-SNAPSHOT.jar eureka-server.jar

# Inicia el servicio
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]

EXPOSE 8081

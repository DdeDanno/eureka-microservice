# Usa una imagen base con OpenJDK
FROM openjdk:17-jdk-slim

# Instalar Maven
RUN apt-get update && apt-get install -y maven

# Establecer el directorio de trabajo
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY . /app

# Ejecuta mvn clean install para construir el proyecto
RUN mvn clean install -Dmaven.repo.local=/tmp/maven-repo

# Copia el archivo .jar generado
COPY target/eureka-microservice-0.0.1-SNAPSHOT.jar eureka-server.jar

# Comando para ejecutar el .jar
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]

# Exponer el puerto
EXPOSE 8081

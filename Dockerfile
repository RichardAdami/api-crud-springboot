# Etapa 1: build do projeto com Maven
FROM maven:3.9.4-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Etapa 2: rodar com uma JRE leve
FROM eclipse-temurin:17-jre

WORKDIR /app

COPY target/api-crud-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]

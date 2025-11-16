# Etapa de construcción
FROM eclipse-temurin:21-jdk AS builder
WORKDIR /app
COPY . .
RUN ./gradlew build -x test

#Etapa de Ejecución
FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=builder /app/build/libs/*.jar app.jar
#Define el puerto
EXPOSE 8888
ENTRYPOINT ["java", "-jar", "app.jar"]

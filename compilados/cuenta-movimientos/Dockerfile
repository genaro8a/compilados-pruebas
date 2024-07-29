
# Dockerfile para gestion-cuentas
FROM openjdk:17-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=gestion-cuentas-0.0.1-SNAPSHOT.jar
COPY application.properties application.properties
COPY ${JAR_FILE} app.jar
# Exponer el puerto 8081
EXPOSE 8081
ENTRYPOINT ["java","-jar","/app.jar","--spring.config.location=file:/application.properties"]


#docker build -t gestion-cuentas .
# docker run -d -p 8081:8081 --name cuentas gestion-cuentas
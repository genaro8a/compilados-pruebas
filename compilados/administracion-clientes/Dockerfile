# Dockerfile para gestion-clientes
FROM openjdk:17-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=administracion-clientes-0.0.1-SNAPSHOT.jar
COPY application.properties application.properties
COPY ${JAR_FILE} app.jar
# Definir la variable de entorno para el archivo de configuración
#ENV SPRING_CONFIG_LOCATION=classpath:/application.properties,file:/app/application.properties
# Exponer el puerto 8080
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar","--spring.config.location=file:/application.properties"]


#docker build -t gestion-clientes .
# docker run -d -p 8080:8080 --name clientes gestion-clientes
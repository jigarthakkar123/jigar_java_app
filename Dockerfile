FROM eclipse-temurin:17-jre
WORKDIR /app
COPY target/rahul_java_app-1.0.0.jar app.jar
CMD ["java", "-jar", "app.jar"]
EXPOSE 9090

# Use an official Java 21 runtime as the base
FROM eclipse-temurin:21-jre-jammy

# Set the folder inside the container where the app will live
WORKDIR /app

# Copy the built JAR file from your local build into the container
# Note: The path 'demo/target/*.jar' matches where Maven saves the build
COPY demo/target/*.jar app.jar

# Tell Docker to open port 8080 (the default for Spring Boot)
EXPOSE 8080

# The command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

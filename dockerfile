# Use an official OpenJDK runtime as a parent image
FROM eclipse-temurin:17-jre-jammy

# Set the working directory inside the container
WORKDIR /app

# Copy the built jar file into the container
COPY target/*.jar app.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
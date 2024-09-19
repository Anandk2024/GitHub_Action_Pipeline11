# Use the official OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY src/main/java/hello/app.jar app.jar

# Specify the command to run the application
CMD ["java", "-jar", "app.jar"]

# Optionally expose a port (if your application serves HTTP)
EXPOSE 1000


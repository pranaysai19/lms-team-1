# Use the official OpenJDK 17 base image
FROM openjdk:17
# Set the working directory in the container
WORKDIR /app
# Copy the entire project into the container
COPY . .
# Grant execute permission to Maven wrapper
# RUN chmod +x mvnw
# Build the application using Maven wrapper
RUN ./mvnw package
# Expose port 8080
EXPOSE 8080
# Command to run the Spring Boot application when the container starts
CMD ["java", "-jar", "target/LMS-0.0.1-SNAPSHOT.jar"]

# Use an official Maven image with JDK 21 installed
FROM maven:3.8.7-openjdk-21

# Set the working directory inside the container
WORKDIR /app

# Copy all files from your project into the container
COPY . .

# Build the project using Maven
RUN mvn clean package

# Expose the port your app runs on (usually 8080)
EXPOSE 8080

# Run the application with the generated JAR file
CMD ["java", "-jar", "target/employee-registry.jar"]

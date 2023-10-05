# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file and any necessary resources into the container
COPY target/your-app.jar . 

# Expose the port your application will run on (adjust as needed)
EXPOSE 8080

# Specify the command to run your application when the container starts
CMD ["java", "-jar", "your-app.jar"]


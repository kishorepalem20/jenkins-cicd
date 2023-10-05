# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file and any necessary resources into the container
COPY /root/.m2/repository/com/example/mywebapp/1.0.0/mywebapp-1.0.0.war . 

# Expose the port your application will run on (adjust as needed)
EXPOSE 8080

# Specify the command to run your application when the container starts
CMD ["java", "-war", "mywebapp-1.0.0.war"]


# Use an OpenJDK base image with Java 17
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy the backend code
COPY . .

# Build the application and rename the JAR for consistency
RUN ./mvnw clean package && cp target/*.jar app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]

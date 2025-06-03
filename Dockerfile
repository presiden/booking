# Stage 1: Build Spring Boot app using Java 21
FROM maven:3.9.6-eclipse-temurin-21 AS build

# Set workdir
WORKDIR /app

# Copy all local source code ke dalam image
COPY . .

# Build the application
RUN mvn clean package -DskipTests

# Stage 2: Create lightweight runtime image using Java 21
FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

# Copy JAR hasil build dari stage sebelumnya
COPY --from=build /app/target/*.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

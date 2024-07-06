# Use the official Maven image to build the application
FROM maven:3.6.3-jdk-8 AS build
COPY pom.xml /app/
COPY src /app/src/
WORKDIR /app
RUN mvn clean package

# Use the official OpenJDK image to run the application
FROM openjdk:8-jdk-alpine
COPY --from=build /app/target/hellojava-1.0-SNAPSHOT.jar /usr/app/hellojava.jar
WORKDIR /usr/app
EXPOSE 8080
CMD ["java", "-jar", "hellojava.jar"]


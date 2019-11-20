FROM openjdk:8-jdk-alpine
COPY build/libs/demo-0.0.1-SNAPSHOT.jar /application.jar
CMD ["java", "jar", "/application.jar"]
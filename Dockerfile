################
#sudo docker rm f64683f42596
################
FROM openjdk:8-jdk-alpine
COPY build/libs/demo-0.0.1-SNAPSHOT.jar /application.jar
ENTRYPOINT ["java", "-jar", "/application.jar"]
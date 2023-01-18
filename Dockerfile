# we will use openjdk 8 with alpine as it is a very small linux distro
FROM openjdk:8

# copy the packaged jar file into our docker image
COPY target/mule-iks-poc-1.0.1-SNAPSHOT-mule-application.jar /mule-iks-poc-1.0.1-SNAPSHOT-mule-application.jar

# set the startup command to execute the jar
CMD ["java", "-jar", "/mule-iks-poc-1.0.1-SNAPSHOT-mule-application.jar"]

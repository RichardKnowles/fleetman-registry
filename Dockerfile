FROM openjdk:8u131-jre

MAINTAINER Richard Knowles "richard@inceptiontraining.co.uk"

ADD /target/fleetman-registry-0.0.1-SNAPSHOT.jar webapp.jar

EXPOSE 8010

CMD ["java","-Dspring.profiles.active=docker","-Djava.security.egd=file:/dev/./urandom","-jar","webapp.jar"]

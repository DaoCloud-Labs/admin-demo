FROM maven:3.5.0-jdk-8-alpine

LABEL maintainer "yann.xia@daocloud.io"

WORKDIR /project
ADD . /project

RUN mvn package
CMD ["java", "-jar", "target/admin-demo-0.0.1-SNAPSHOT.jar"]
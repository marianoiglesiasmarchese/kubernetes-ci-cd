FROM maven:3.6.1-jdk-11-slim as builder

MAINTAINER marianoiglesiasmarchese@gmail.com

WORKDIR /app

COPY pom.xml .

RUN mvn dependency:go-offline

COPY . . 

RUN mvn clean package -DskipTests


FROM openjdk:11-jre-slim

WORKDIR /app

COPY --from=builder /app/target/kubernetes-ci-cd-0.0.1.jar /app/kubernetes-ci-cd.jar

EXPOSE 8080

CMD ["java","-jar","kubernetes-ci-cd.jar"]

FROM maven:3.9.5-eclipse-temurin-17-focal as build

RUN mkdir /app
WORKDIR /app
COPY ./pom.xml /app
COPY ./src /app/src

RUN mvn package -DskipTests

FROM eclipse-temurin:17

LABEL mentainer="javaguides.net@gmail.com"

WORKDIR /app

COPY --from=build /app/target/springboot-restful-webservices-0.0.1-SNAPSHOT.jar /app/springboot-restful-webservices.jar

ENTRYPOINT ["java", "-jar", "springboot-restful-webservices.jar"]

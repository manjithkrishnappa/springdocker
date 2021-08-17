FROM maven:latest
WORKDIR /code
COPY . /code
RUN mvn clean compile package -DskipTests

ADD ./target/springdocker-0.0.1-SNAPSHOT.jar /app/springdocker.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app/springdocker.jar"]
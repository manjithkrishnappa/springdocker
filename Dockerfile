FROM openjdk:latest
VOLUME /tmp
ADD ./target/springdocker-0.0.1-SNAPSHOT.jar springdocker.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/springdocker.jar"]
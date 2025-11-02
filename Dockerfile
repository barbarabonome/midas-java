FROM eclipse-temurin:21
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/midas-fintech-java-0.0.1-SNAPSHOT.jar
RUN mkdir /app
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]
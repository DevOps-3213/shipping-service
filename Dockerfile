FROM openjdk:8-jdk-alpine
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
RUN chmod +x / && chmod +x .
CMD java -jar /app.jar $APP_ARGS

# FROM openjdk:17
# COPY .mvn/ .mvn
# COPY mvnw /orders-service-example/pom.xml ./
# RUN ./mvnw dependency:resolve
# COPY src ./src
# CMD ["./mvnw", "spring-boot:run"]

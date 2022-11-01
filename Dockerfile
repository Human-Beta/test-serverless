FROM openjdk:11
ARG jar_file=test-serverless-0.0.1-SNAPSHOT.jar
ENV JAR_FILE=./build/libs/$jar_file
WORKDIR /app
COPY ./gradle ./gradle
COPY ./src ./src
COPY ./build.gradle ./
COPY ./gradlew ./
COPY ./gradlew.bat ./
COPY ./settings.gradle ./
RUN chmod +x gradlew
RUN chmod +x gradlew.bat
RUN ls -lR
RUN ./gradlew clean assemble
EXPOSE 8080 8888
CMD java -jar $JAR_FILE
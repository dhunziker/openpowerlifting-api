FROM sbtscala/scala-sbt:eclipse-temurin-alpine-21.0.6_7_1.10.10_3.6.3

WORKDIR /app

COPY . /app

EXPOSE 8080

RUN sbt clean compile

ENTRYPOINT ["sbt", "-mem", "500", "run"]

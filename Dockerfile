FROM maven:3.6.0-jdk-8

LABEL "Author"="Kristine Legzdina"

WORKDIR /docker

COPY ./ui-automation /docker/

RUN mvn dependency:resolve
RUN mvn clean install -DskipTests



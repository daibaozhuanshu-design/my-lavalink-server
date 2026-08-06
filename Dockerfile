FROM eclipse-temurin:17-jre-slim

RUN apt-get update && apt-get install -y libudev1 && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/Lavalink

ADD https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar ./Lavalink.jar

COPY application.yml ./application.yml

EXPOSE 2333
CMD ["java", "-jar", "Lavalink.jar"]

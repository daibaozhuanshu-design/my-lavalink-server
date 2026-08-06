FROM openjdk:17-slim
WORKDIR /opt/Lavalink
ADD https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar ./Lavalink.jar
COPY application.yml ./application.yml
CMD ["java", "-jar", "Lavalink.jar"]

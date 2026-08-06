FROM eclipse-temurin:17-jre-alpine

WORKDIR /opt/Lavalink

# 下載官方最新的 Lavalink.jar
ADD https://github.com/lavalink-devs/Lavalink/releases/download/4.0.5/Lavalink.jar ./Lavalink.jar

COPY application.yml ./application.yml

EXPOSE 2333
CMD ["java", "-jar", "Lavalink.jar"]

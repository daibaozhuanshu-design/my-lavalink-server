FROM eclipse-temurin:17-jre-slim

# 安裝音訊處理與底層相依庫
RUN apt-get update && apt-get install -y libudev1 && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/Lavalink

# 下載官方最新的 Lavalink.jar
ADD https://github.com/lavalink-devs/Lavalink/releases/download/4.0.5/Lavalink.jar ./Lavalink.jar

COPY application.yml ./application.yml

EXPOSE 2333
CMD ["java", "-jar", "Lavalink.jar"]

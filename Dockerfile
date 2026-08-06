FROM eclipse-temurin:17-jre-slim

RUN apt-get update && apt-get install -y libudev1 wget && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/Lavalink

# 下載 Lavalink 4.0.8 主程式
ADD https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar ./Lavalink.jar

# 建立 plugins 資料夾並直接下載 lavasrc-plugin 4.3.0
RUN mkdir -p ./plugins && \
    wget -O ./plugins/lavasrc-plugin-4.3.0.jar https://maven.lavalink.dev/releases/com/github/topi314/lavasrc/lavasrc-plugin/4.3.0/lavasrc-plugin-4.3.0.jar

COPY application.yml ./application.yml

EXPOSE 2333
CMD ["java", "-jar", "Lavalink.jar"]

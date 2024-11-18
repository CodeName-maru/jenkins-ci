# Base 이미지
FROM openjdk:17-jdk-slim

# 애플리케이션 JAR 파일을 컨테이너로 복사
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

# 애플리케이션 실행 명령
ENTRYPOINT ["java", "-jar", "/app.jar"]
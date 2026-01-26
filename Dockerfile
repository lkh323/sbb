# 1. Java 실행 환경 선택 (프로젝트 자바 버전에 맞춰 수정 가능)
# FROM eclipse-temurin:21-jdk-slim
FROM eclipse-temurin:21-jdk
# 2. 빌드된 jar 파일을 컨테이너 내부로 복사
# 빌드 도구에 따라 경로가 다를 수 있음 (build/libs/*.jar 또는 target/*.jar)
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

# 3. 앱 실행
ENTRYPOINT ["java", "-jar", "/app.jar"]
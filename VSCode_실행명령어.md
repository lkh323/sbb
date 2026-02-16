# PostgreSQL 16 버전 사용 (대안)
docker run -d ^
  --name sbb-postgres ^
  -e POSTGRES_DB=sbb ^
  -e POSTGRES_USER=postgres ^
  -e POSTGRES_PASSWORD=1234 ^
  -p 5432:5432 ^
  -v %cd%/sbb-postgres-data:/var/lib/postgresql/data ^
  postgres:16


명령어,설명
gradlew clean,이전 빌드에서 생성된 build 폴더를 삭제합니다.
gradlew clean build,깨끗한 상태에서 전체 프로젝트를 다시 빌드합니다.
gradlew build -x test,테스트 코드를 실행하지 않고 빌드 시간만 단축하여 수행합니다.
gradlew bootJar,실행 가능한(Executable) JAR 파일만 생성합니다.


http://211.202.223.70:8081/github-webhook

192.168.0.81
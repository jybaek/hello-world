# Golang image를 사용
FROM golang:latest

# 작업 디렉토리 생성
WORKDIR /app

# 현재 디렉토리의 모든 파일을 작업 디렉토리로 복사
COPY . .

# Go 모듈 다운로드 및 의존성 설치
RUN go mod download

# 컨테이너 내에서 실행할 명령어
CMD ["go", "run", "main.go"]


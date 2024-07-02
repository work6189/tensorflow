# 베이스 이미지로 tensorflow 사용
FROM tensorflow/tensorflow:latest

# 작업 디렉토리 설정
WORKDIR /app

# 필요한 패키지 설치
#COPY requirements.txt ./
#RUN pip install --no-cache-dir -r requirements.txt

# 애플리케이션 코드 복사
COPY ./ /app

# Uvicorn을 사용하여 FastAPI 애플리케이션 실행
# CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
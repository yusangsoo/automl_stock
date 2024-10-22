# 파이썬 이미지 사용
FROM python:3.10-slim

# 작업 디렉토리 지정
WORKDIR /app

# 패키지 일괄 설치
# requirements 텍스트 파일 복사
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# stock_analysis_autogluon.py 파일 복사
COPY . .

# stock_analysis_autogluon.py 파일 실행
CMD [ "python", "stock_analysis_autogluon.py" ]
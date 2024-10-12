# Dockerfile
FROM python:3.11-slim

# 作業ディレクトリを作成
WORKDIR /app

# 依存パッケージをインストール
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# アプリのソースコードをコピー
COPY . .

# アプリを起動
CMD ["python", "app.py"]

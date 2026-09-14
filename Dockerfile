FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python", "app.py"]
EXPOSE 80
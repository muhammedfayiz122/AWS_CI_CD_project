# Using minimal python 12 image
FROM python:3.12-slim

# Setting working directory
WORKDIR /app

# Copy files (if needed)
COPY . /app

RUN apt update -y && apt install awscli -y

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 unzip -y && pip install -r requirements.txt
CMD ["python3", "app.py"]


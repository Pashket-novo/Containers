FROM python:3.8-slim-buster
WORKDIR /code
ADD add /code
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y
CMD ["python", "/code/object_detection.py", "/code/yolo_tiny_configs/"]

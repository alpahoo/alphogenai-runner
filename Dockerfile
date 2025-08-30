FROM pytorch/pytorch:2.1.0-cuda11.8-runtime
RUN apt-get update && apt-get install -y ffmpeg
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
FROM ubuntu

WORKDIR /app

COPY . /app

RUN apt update && apt install -y python3 python3-pip
RUN pip install --break-system-packages flask

EXPOSE 5000

CMD ["python3", "app.py"]

FROM python:3.12.4

WORKDIR /app

COPY . /app
RUN pip install --no-cache-dir requests mysql-connector-python SQLAlchemy

EXPOSE 5000
#CMD ["python", "recuperer.py"]

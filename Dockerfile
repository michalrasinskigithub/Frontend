FROM python:3.8-slim-buster
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY app.py app.py
RUN mkdir templates
COPY templates/index.html templates/index.html
EXPOSE 5000
CMD ["python", "app.py"]

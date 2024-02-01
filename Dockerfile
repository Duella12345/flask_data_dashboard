FROM python:alpine3.19
EXPOSE 8000
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD [ "python", "./app.py"]
FROM python:3.8.6-alpine
RUN apk add --update --upgrade gcc musl-dev
ADD requirements.txt /
RUN pip3 install -r ./requirements.txt
ADD exporter.py /
ENTRYPOINT [ "python3", "./exporter.py" ]

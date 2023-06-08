FROM python:3.9-slim

MAINTAINER "Neo Peng <pengzhile@gmail.com>"

WORKDIR /opt/app

ADD . .

RUN pip --no-cache-dir install --upgrade pip && pip --no-cache-dir install .[api,cloud]

EXPOSE 8086
ENTRYPOINT ["bin/startup.sh"]

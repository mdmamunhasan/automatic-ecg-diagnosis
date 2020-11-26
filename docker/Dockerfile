FROM python:3.6

ENV PYTHONUNBUFFERED 1

WORKDIR /src

RUN apt-get update && \
    apt-get install -y --no-install-recommends netcat && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install --upgrade pip
COPY requirements.txt requirements.txt ./

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]


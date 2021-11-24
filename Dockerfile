FROM python:3.10.0b2

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade --no-cache-dir black

ENTRYPOINT /usr/local/bin/black --check --diff  .

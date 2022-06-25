FROM python:3.9

ENV PYTHONUNBUFFERED 1

COPY. /project/
WORKDIR /project/

RUN pip install pipenv
RUN pipenv install --system

EXPOSE 8000
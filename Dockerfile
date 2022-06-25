FROM python:3.9

ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /newproj

COPY Pipfile Pipfile.lock /newproj/

RUN pip install pipenv && pipenv install --system

COPY . /project/
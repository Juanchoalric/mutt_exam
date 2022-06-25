FROM python:3.9

ENV PYTHONUNBUFFERED 1

COPY. /mutt_exam/
WORKDIR /mutt_exam/

RUN pip install pipenv
RUN pipenv install --system

EXPOSE 8000
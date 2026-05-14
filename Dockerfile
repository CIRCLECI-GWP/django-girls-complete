FROM python:3.13-slim
ENV PYTHONUNBUFFERED=1
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
CMD sh init.sh && python3 manage.py runserver 0.0.0.0:8000

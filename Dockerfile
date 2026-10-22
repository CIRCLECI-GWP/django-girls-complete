FROM python:3.14-slim
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
CMD ["sh", "-c", "sh init.sh && exec python3 manage.py runserver 0.0.0.0:8000"]

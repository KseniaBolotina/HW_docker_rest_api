FROM python:3.11-slim

WORKDIR /stocks_products

COPY . /stocks_products/

RUN pip install --no-cache-dir -r requirements.txt

ENV PYTHONUNBUFFERED=1

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
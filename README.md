# Запуск Docker контейнера для Django

### Сборка Docker-образа:
'''bash
docker build -t stocks_products .'''

### Запуск контейнера
'''bash
docker run -p 8000:8000 stocks_products'''

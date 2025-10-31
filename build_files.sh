#!/bin/bash

# Создаем директорию для статических файлов
mkdir -p staticfiles_build/static

# Устанавливаем зависимости
pip install -r requirements.txt

# Собираем статические файлы
python manage.py collectstatic --noinput --clear

# Копируем статические файлы в нужную директорию
cp -r staticfiles/* staticfiles_build/static/
